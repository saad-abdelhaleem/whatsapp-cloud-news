param([string]$Message = ('Update WhatsApp Cloud API newsletter - ' + (Get-Date -Format 'yyyy-MM-dd')))
$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
function Assert-Git { if ($LASTEXITCODE -ne 0) { throw 'Git operation failed. Publication stopped.' } }
$branch = git branch --show-current
Assert-Git
if ($branch -ne 'main') { throw 'Publication requires main branch.' }
$changes = @(git status --porcelain --untracked-files=all)
Assert-Git
if ($changes | Where-Object { $_ -notmatch '^ M index\.html$' }) { throw 'Unexpected working tree changes. Review them before publishing.' }
if ($changes.Count -eq 0) { Write-Output 'No editorial changes to publish.'; exit 0 }
git diff --check
Assert-Git
git add -- index.html
Assert-Git
git commit -m $Message -- index.html
Assert-Git
git push origin main
Assert-Git
Write-Output 'Push succeeded. Verify the live deployment separately.'
