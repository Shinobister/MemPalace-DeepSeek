Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "   MemPalace DeepSeek Integration          " -ForegroundColor Yellow
Write-Host "   Starting Claude Code with Memory Layer  " -ForegroundColor Yellow
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Configuration Summary:" -ForegroundColor White
Write-Host "----------------------" -ForegroundColor Gray
Write-Host "✓ MCP Servers: mempalace, playwright" -ForegroundColor Green
Write-Host "⚠ MCP Servers: Gmail/Calendar (needs auth in separate project)" -ForegroundColor Yellow
Write-Host "✓ Memory Database: ~/.mempalace/" -ForegroundColor Green
Write-Host "✓ Project: MemPalace-DeepSeek" -ForegroundColor Green
Write-Host "✓ Repository: https://github.com/Shinobister/MemPalace-DeepSeek" -ForegroundColor Green
Write-Host ""
Write-Host "Working Directory: C:\Users\Don\Documents\Claude\MemPalace" -ForegroundColor Gray
Write-Host ""
Write-Host "Starting Claude Code in 3 seconds..." -ForegroundColor Gray

# Countdown with progress
for ($i = 3; $i -gt 0; $i--) {
    Write-Host "  Starting in $i..." -ForegroundColor DarkGray
    Start-Sleep -Seconds 1
}

Write-Host ""
Write-Host "Launching Claude Code..." -ForegroundColor Cyan

# Start Claude Code with working directory
$claudePath = "C:\Users\Don\AppData\Local\Packages\Claude_pzs8sxrjxfjjc\LocalCache\Roaming\Claude\claude-code\2.1.92\claude.exe"
$workingDir = "C:\Users\Don\Documents\Claude\MemPalace"

if (Test-Path $claudePath) {
    Start-Process $claudePath -WorkingDirectory $workingDir
    Write-Host "✓ Claude Code launched successfully" -ForegroundColor Green
} else {
    Write-Host "✗ Claude Code not found at: $claudePath" -ForegroundColor Red
    Write-Host "Please update the path in this script." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "When Claude Code opens:" -ForegroundColor White
Write-Host "1. Run: mempalace_status" -ForegroundColor Gray
Write-Host "2. Run: mempalace wake-up" -ForegroundColor Gray
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to close this window..." -ForegroundColor DarkGray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")