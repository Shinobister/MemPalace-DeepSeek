# MCP Setup Requirements

## For Separate MCP Project
1. Authenticate Gmail MCP via `mcp__claude_ai_Gmail__authenticate` tool
2. Authenticate Google Calendar MCP via `mcp__claude_ai_Google_Calendar__authenticate` tool  
3. Install Playwright MCP: `claude mcp add playwright -- npx @modelcontextprotocol/server-playwright`

## Current MemPalace Project MCP
- mempalace MCP server already added: `claude mcp add mempalace -- python -m mempalace.mcp_server`
- Status: ✓ Connected