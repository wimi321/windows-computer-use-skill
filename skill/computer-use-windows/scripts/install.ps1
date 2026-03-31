$ErrorActionPreference = 'Stop'

$srcDir = Split-Path -Parent $PSScriptRoot
$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME '.codex' }
$destDir = Join-Path $codexHome 'skills\computer-use-windows'

New-Item -ItemType Directory -Force -Path $destDir | Out-Null
Copy-Item -Path (Join-Path $srcDir '*') -Destination $destDir -Recurse -Force
Write-Host "Installed skill to $destDir"
