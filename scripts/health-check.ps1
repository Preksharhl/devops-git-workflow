$ErrorActionPreference = 'Stop'

$requiredFiles = @(
    'README.md',
    '.gitignore',
    'docs/task-record.md',
    'docs/git-workflow.md',
    '.github/workflows/ci.yml'
)

$missingFiles = @($requiredFiles | Where-Object { -not (Test-Path -LiteralPath $_ -PathType Leaf) })
if ($missingFiles.Count -gt 0) {
    Write-Error "Health check failed. Missing required file(s): $($missingFiles -join ', ')"
    exit 1
}

Write-Output 'Health check passed.'
