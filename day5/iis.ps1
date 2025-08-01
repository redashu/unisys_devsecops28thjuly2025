Import-Module WebAdministration

$siteName     = 'DesktopStatic8082'
$port         = 8082
$desktopPath  = "$env:USERPROFILE\Desktop\ashutoshh-apps"
$physicalPath = "C:\inetpub\wwwroot\DesktopStatic"

if (-not (Test-Path $physicalPath)) {
  New-Item -ItemType Directory -Path $physicalPath | Out-Null
}

Copy-Item -Path (Join-Path $desktopPath 'index.html') `
          -Destination $physicalPath `
          -Force
Write-Host "✅ Copied index.html"

if (Get-Website -Name $siteName -ErrorAction SilentlyContinue) {
  Remove-Website -Name $siteName
}

New-Website -Name $siteName `
            -PhysicalPath $physicalPath `
            -Port $port `
            -Force

Write-Host "✅ Site '$siteName' created at http://localhost:$port/"

New-NetFirewallRule -DisplayName "IIS HTTP 8082" `
  -Direction Inbound -Action Allow -Protocol TCP -LocalPort $port

Write-Host "✅ Firewall opened for port $port"