# MemPalace DeepSeek Integration

## Session Startup
1. Run `mempalace_status` to load context and understand current memory state
2. Check `mempalace wake-up` for L0 + L1 context (~600-900 tokens)

## Memory-First Workflow
- **Prioritize `mempalace_search` over bulk file reading** to stay within DeepSeek's 128k context window
- Use semantic search for relevant context before reading entire files
- When searching for code patterns, use `mempalace search "function_name"` first

## Task Completion
- At the end of each significant task, use `mempalace_add_drawer` to save progress
- Use **AAAK shorthand** for concise memory entries
- Include: Action taken, Artifacts created, Assumptions validated, Knowledge gained

## Project Structure
- `.mempalace/` directory contains vector database (excluded from git via .gitignore)
- MCP server: `mempalace` (already configured and connected)
- GitHub repo: MemPalace-DeepSeek (to be created)

## Common Commands
```bash
# Search for relevant context
mempalace search "query"

# Check memory status
mempalace status

# Wake-up context
mempalace wake-up

# Add new memory
mempalace_add_drawer "AAAK: Description of work"
```

## Integration Notes
- MCP server runs via `python -m mempalace.mcp_server`
- Tool available in Claude Code as `mempalace_*` commands
- Separate MCP project for Gmail/Calendar/Playwright authentication