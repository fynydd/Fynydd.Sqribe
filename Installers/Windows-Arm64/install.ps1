Write-Host ">>> Create SQribe application folder..."

md -Force c:\SQribe

Write-Host ">>> Copy SQribe files..."

robocopy publish c:\SQribe /MIR /COPY:DT /FFT /MT

Write-Host ">>> Add SQribe to system path..."

Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path
$old = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path).path

if ($old.IndexOf('c:\SQribe') -lt 1)
{
    $new = "$old;c:\SQribe"
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path -Value $new
}

Write-Host ">>> SUCCESS!"
Write-Host ">>> Restart PowerShell (or launch command prompt) to begin using SQribe"
