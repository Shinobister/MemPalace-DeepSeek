# MemPalace DeepSeek Integration

A DeepSeek-optimized environment using MemPalace as the primary memory layer for Claude Code sessions.

## Overview
This project configures MemPalace as a memory management system integrated with Claude Code and DeepSeek-V3.1. The goal is to stay within DeepSeek's 128k context window by using semantic memory search instead of bulk file reading.

## Features
- **MemPalace MCP Server**: Integrated as a Claude Code tool
- **Memory-First Workflow**: Prioritize `mempalace_search` over file reading
- **DeepSeek Optimization**: Context window management for 128k limit
- **AAAK Shorthand**: Structured memory entries using Action, Artifacts, Assumptions, Knowledge
- **Git Integration**: Version control with proper ignores
- **Windows Automation**: Batch and PowerShell scripts for quick startup with splash screens

## Setup
1. **Python Environment**: Requires Python 3.14+ and mempalace package
2. **MCP Server**: Already configured via `claude mcp add mempalace`
3. **Memory Database**: Run `mempalace init` to initialize project memory

## Usage
See [CLAUDE.md](CLAUDE.md) for Claude-specific instructions.

### Basic Commands
```bash
# Initialize memory database
mempalace init

# Mine project files into memory
mempalace mine .

# Search for relevant context
mempalace search "query"

# Check memory status
mempalace status

# Get wake-up context
mempalace wake-up
```

## Automation

### Windows Startup Scripts
- **`MemPalace-Claude.bat`**: Batch file with configuration summary and Claude launch
- **`MemPalace-Splash.ps1`**: PowerShell script with colored output and countdown timer

**Usage**: Double-click either file to start Claude Code with the MemPalace project directory pre-set.

### Quick Startup Workflow
1. Run automation script (opens Claude Code with correct working directory)
2. When Claude Code opens, run:
   ```bash
   mempalace_status
   mempalace wake-up
   ```
3. Begin work using memory-first search pattern

## Project Structure
```
MemPalace/
├── .gitignore          # Git ignore patterns
├── CLAUDE.md           # Claude instructions (complete workflow guide)
├── README.md           # Project documentation
├── MCP_SETUP_PROMPT.md # MCP setup requirements (for separate project)
├── MCP_GMAIL_CALENDAR_SETUP_PROMPT.md # Detailed prompt for Gmail/Calendar MCP setup
├── MemPalace-Claude.bat # Windows batch automation script
├── MemPalace-Splash.ps1 # PowerShell splash screen script
├── PROJECT_CONTEXT.md   # AAAK entries and project history
├── mempalace.yaml      # MemPalace configuration
├── entities.json       # Detected project entities
└── .mempalace/         # Memory database (gitignored)
```

## MCP Configuration
- **MemPalace**: `python -m mempalace.mcp_server` (configured)
- **Gmail/Calendar**: Requires authentication (separate project)
- **Playwright**: To be installed via `claude mcp add playwright`

## License
MIT