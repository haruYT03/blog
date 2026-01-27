# Auto Deploy Script
$message = Read-Host "Enter commit message (Enter to skip)"
if ($message -eq "") { $message = "update blog" }

git add .
git commit -m "$message"
git push

Write-Host "Done! Site will be updated in a few minutes." -ForegroundColor Green
Pause