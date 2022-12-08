// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Linq;

namespace SQribe.Halide.Core;

public static class Objects
{
    /// <summary>
    /// Get all types that inherit from a base type
    /// </summary>
    /// <param name="baseType"></param>
    /// <returns></returns>
    public static IEnumerable<Type> GetInheritedTypes(this Type baseType, bool excludeSystemAssemblies = true)
    {
        var types = new List<Type>();
		
        foreach (var assembly in AppDomain.CurrentDomain.GetAssemblies().Where(a => excludeSystemAssemblies == false || (excludeSystemAssemblies && (a.FullName?.StartsWith("System") ?? false) == false && (a.FullName?.StartsWith("Microsoft") ?? false) == false)))
        {
            var subtypes = assembly.GetTypes().Where(TheType => TheType is {IsClass: true, IsAbstract: false}).ToList();
            var ts = subtypes.Where(t => t != baseType && t.IsAssignableTo(baseType)).ToList();
            
            types.AddRange(ts);
        }
		
        return types;
    }

    /// <summary>
    /// Inverse of IEnumerable.Contains() method.
    /// </summary>
    /// <param name="source"></param>
    /// <param name="value"></param>
    /// <param name="comparer"></param>
    /// <typeparam name="TSource"></typeparam>
    /// <returns></returns>
    public static bool NotContains<TSource>(this IEnumerable<TSource> source, TSource value, IEqualityComparer<TSource>? comparer)
    {
        return source.Contains(value, comparer) == false;
    }
}