function Get-InternetProxyPacUrl
 { 
    <# 
            .SYNOPSIS 
                Determine the internet proxy pac url
            .DESCRIPTION
                This function allows you to determine the the internet proxy pac url  address used by your computer
            .EXAMPLE 
                Get-InternetProxy
            .Notes 
                Author : Massimiliano Corsi 
                WebSite: https://github.com/massimilianocorsi/
    #> 

    $proxies = (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings').AutoConfigURL
    if ($proxies)
        {
        Write-Host "Proxy PAC: $proxies"
        } else {
        Write-Host "Proxy PAC is not configured"
    }
}
Get-InternetProxyPacUrl
