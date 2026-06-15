param(
  [Parameter(Mandatory=$true)]
  [string]$RepoName,

  [ValidateSet("public", "private")]
  [string]$Visibility = "public"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
  throw "GitHub CLI was not found. Install gh first, or upload this folder manually on GitHub."
}

gh auth status | Out-Null

if (-not (Test-Path ".git")) {
  git init -b main
}

git add .

$hasChanges = git status --porcelain
if ($hasChanges) {
  git commit -m "Publish GitHub README check service"
}

$repoExists = $false
try {
  gh repo view $RepoName | Out-Null
  $repoExists = $true
} catch {
  $repoExists = $false
}

if (-not $repoExists) {
  if ($Visibility -eq "private") {
    gh repo create $RepoName --source . --private --remote origin --push
  } else {
    gh repo create $RepoName --source . --public --remote origin --push
  }
} else {
  if (-not (git remote get-url origin 2>$null)) {
    $user = gh api user --jq .login
    git remote add origin "https://github.com/$user/$RepoName.git"
  }
  git push -u origin main
}

$user = gh api user --jq .login
try {
  gh api "repos/$user/$RepoName/pages" `
    --method POST `
    -f "source[branch]=main" `
    -f "source[path]=/" 2>$null | Out-Null
} catch {
  try {
    gh api "repos/$user/$RepoName/pages" `
      --method PUT `
      -f "source[branch]=main" `
      -f "source[path]=/" 2>$null | Out-Null
  } catch {
    Write-Host "The repo was pushed. If Pages was not enabled automatically, open Settings -> Pages and choose main / root."
  }
}

Write-Host "Publish request sent. Wait 1 to 3 minutes, then open:"
Write-Host "https://$user.github.io/$RepoName/"
