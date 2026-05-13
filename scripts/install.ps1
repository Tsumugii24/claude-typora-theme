$ErrorActionPreference = "Stop"

$repo = "Tsumugii24/claude-typora-theme"
$branch = "main"
$themeDir = Join-Path $env:APPDATA "Typora\themes"

if (-not (Test-Path $themeDir)) {
    New-Item -ItemType Directory -Path $themeDir -Force | Out-Null
}

$tmp = Join-Path $env:TEMP "claude-typora-theme-install"
if (Test-Path $tmp) {
    Remove-Item -LiteralPath $tmp -Recurse -Force
}

git clone --depth 1 --branch $branch "https://github.com/$repo.git" $tmp

Copy-Item -LiteralPath (Join-Path $tmp "claude.css") -Destination $themeDir -Force
Copy-Item -LiteralPath (Join-Path $tmp "claude-dark.css") -Destination $themeDir -Force
Copy-Item -LiteralPath (Join-Path $tmp "claude_fonts") -Destination $themeDir -Recurse -Force

Write-Host "Installed Claude Typora theme to: $themeDir"
Write-Host "Restart Typora and select Claude or Claude Dark from the Themes menu."
