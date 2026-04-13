@echo off
echo #############################################
echo #   MemPalace DeepSeek Integration         #
echo #   Loading Claude Code with Memory Layer  #
echo #############################################
echo.
echo Initializing MemPalace MCP servers...
echo Project directory: C:\Users\Don\Documents\Claude\MemPalace
echo.
echo MCP Servers configured:
echo   ✓ mempalace
echo   ✓ playwright
echo   ⚠ Gmail/Calendar (needs auth in separate project)
echo.
echo Memory database: %USERPROFILE%\.mempalace\
echo GitHub repo: https://github.com/Shinobister/MemPalace-DeepSeek
echo.
timeout /t 3 /nobreak >nul
echo Starting Claude Code...
start "" "C:\Users\Don\AppData\Local\Packages\Claude_pzs8sxrjxfjjc\LocalCache\Roaming\Claude\claude-code\2.1.92\claude.exe" --working-dir "C:\Users\Don\Documents\Claude\MemPalace"
echo.
echo Claude Code started with MemPalace project.
echo.
echo When Claude Code opens:
echo 1. Run: mempalace_status
echo 2. Run: mempalace wake-up
echo.
echo Press any key to close this window...
pause >nul