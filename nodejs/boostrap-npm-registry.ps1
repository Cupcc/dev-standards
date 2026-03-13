# 这是npm代理ps1脚本
$Registry = "http://192.168.6.128:4873"

if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    Write-Error "npm is not installed."
    exit 1
}

Write-Host "Setting user npm registry -> $Registry"
npm config set registry=$Registry

Write-Host "Current registry:"
npm config get registry

Write-Host "Testing connectivity:"
npm ping --registry $Registry