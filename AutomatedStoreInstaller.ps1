 Param(
[Parameter(Mandatory=$True)]
[string]$jsonConfigurationFile
)

$jsondata = Get-Content -Raw -Path $jsonConfigurationFile | ConvertFrom-Json
foreach ($app in $jsondata.apps)
{
    $url = "ms-windows-store://PDP/?productid="+$app
    Start-Process -FilePath $url
    $wshell = New-Object -ComObject wscript.shell;
    $wshell.AppActivate('Microsoft Store')
    Sleep $jsondata.delay
    $wshell.SendKeys(' ')
    Sleep $jsondata.delay
}   
