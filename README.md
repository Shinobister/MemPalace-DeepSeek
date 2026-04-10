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

## Project Structure
```
MemPalace/
├── .gitignore          # Git ignore patterns
├── CLAUDE.md           # Claude instructions
├── README.md           # Project documentation
├── MCP_SETUP_PROMPT.md # MCP setup requirements (for separate project)
└── .mempalace/         # Memory database (gitignored)
```

## MCP Configuration
- **MemPalace**: `python -m mempalace.mcp_server` (configured)
- **Gmail/Calendar**: Requires authentication (separate project)
- **Playwright**: To be installed via `claude mcp add playwright`

## License
MIT