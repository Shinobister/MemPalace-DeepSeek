# Claude Code DeepSeek Integration Project

A project workspace for Claude Code with DeepSeek-V3.1 model integration.

## Overview
This repository serves as a workspace for Claude Code sessions using the DeepSeek-V3.1 model. It was previously configured with MemPalace memory management system, which has been decommissioned as of April 13, 2026.

## Current Configuration
- **Claude Code**: Latest version with DeepSeek-V3.1 model integration
- **MCP Servers**: Playwright (configured, requires installation)
- **Python**: System Python 3.14.3
- **Git**: Repository synchronized with GitHub

## Project History
- **April 2026**: Initial integration of MemPalace memory system
- **April 13, 2026**: Complete surgical reversion of MemPalace (see [DECOMMISSION.md](DECOMMISSION.md))

## Usage
This directory is configured as a Claude Code working directory with:
- Git repository tracking
- Project-specific instructions in [CLAUDE.md](CLAUDE.md)
- Documentation of the MemPalace decommissioning process

### Basic Workflow
1. Open Claude Code with this directory as the working directory
2. Follow instructions in [CLAUDE.md](CLAUDE.md) for project-specific guidance
3. Use standard Claude Code tools and workflows

## Project Structure
```
MemPalace/
├── .gitignore          # Git ignore patterns
├── CLAUDE.md           # Claude instructions (updated workflow guide)
├── README.md           # Project documentation
├── DECOMMISSION.md     # MemPalace removal documentation
├── MCP_SETUP_PROMPT.md # MCP setup requirements (for separate project)
├── MCP_GMAIL_CALENDAR_SETUP_PROMPT.md # Detailed prompt for Gmail/Calendar MCP setup
├── PROJECT_CONTEXT.md   # AAAK entries and project history
└── .claude/            # Claude Code project configuration
```

## MCP Configuration
- **Playwright**: To be installed via `claude mcp add playwright`
- **MemPalace**: Decommissioned and removed (see DECOMMISSION.md)

## Decommissioning Details
The MemPalace memory system has been completely removed via surgical reversion:
- Python package uninstalled globally
- MCP server configuration removed from Claude Code
- Memory database deleted (except locked ChromaDB files pending reboot)
- Configuration files and automation scripts removed
- Documentation updated to reflect current state

For complete removal details, see [DECOMMISSION.md](DECOMMISSION.md).

## License
MIT