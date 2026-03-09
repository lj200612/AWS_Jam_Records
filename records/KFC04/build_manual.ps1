$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$buildDir = Join-Path $root "build"
$manualTexFile = Get-ChildItem -LiteralPath $root -Filter "*.tex" | Where-Object { $_.Name -ne $null } | Select-Object -First 1
$manualTexName = $manualTexFile.Name
$tempTexName = "_manual_build.tex"
$tempPdfName = "_manual_build.pdf"
$manualPdfFile = Get-ChildItem -LiteralPath $root -Filter "*.pdf" | Where-Object { $_.Name -like "AWS Jam*" } | Select-Object -First 1
$manualPdf = $manualPdfFile.FullName
$buildPdf = Join-Path $buildDir $tempPdfName

New-Item -ItemType Directory -Force -Path $buildDir | Out-Null

Push-Location $root
try {
  Copy-Item -LiteralPath $manualTexName -Destination $tempTexName -Force
  $compileCmd = "xelatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build ""$tempTexName"""
  Invoke-Expression $compileCmd
  if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

  Invoke-Expression $compileCmd
  if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

  Copy-Item -LiteralPath $buildPdf -Destination $manualPdf -Force
} finally {
  if (Test-Path -LiteralPath $tempTexName) {
    Remove-Item -LiteralPath $tempTexName -Force
  }
  Pop-Location
}
