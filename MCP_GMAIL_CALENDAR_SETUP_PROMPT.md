# Comprehensive MCP Setup Prompt for Gmail & Google Calendar

## 🎯 Purpose
Use this prompt in a **brand new Claude Code session** to install and configure Gmail and Google Calendar MCP servers, plus any related hooks and skills. This should be done in **plan mode first** for safety.

## 📋 Project Context
- **Separate from MemPalace project**: This is a dedicated session for MCP server setup only
- **Target**: Install and authenticate Gmail MCP, Google Calendar MCP, and Playwright MCP servers
- **Scope**: Global configuration (affects all Claude Code sessions)

## ⚠️ Critical Safety Considerations
1. **Global Configuration**: MCP server registration affects ALL Claude Code sessions
2. **OAuth Authentication**: Will require browser login to Google account
3. **File Lock Risks**: Ensure no other Claude sessions are running during configuration
4. **Irreversible Changes**: Once added, MCP servers persist across sessions

## 🚀 Phase 0: Pre-Flight Checklist
**Before starting plan mode, ask user to confirm:**
- [ ] No other Claude Code sessions are running (check Task Manager)
- [ ] They are ready to authenticate via browser to Google account
- [ ] They understand this configures global MCP servers for all future sessions
- [ ] They have backup of current MCP config (optional but recommended)

## 🔧 Phase 1: MCP Server Installation

### 1.1 Check Current MCP Configuration
```bash
claude mcp list
```
**Expected**: Shows current servers (mempalace, possibly others). Note what exists.

### 1.2 Install Playwright MCP Server
```bash
claude mcp add playwright -- npx @modelcontextprotocol/server-playwright
```
**Notes**: 
- Uses npx, requires Node.js/npm
- Installs globally for all Claude sessions
- May prompt for installation if not already available

### 1.3 Verify Installation
```bash
claude mcp list
```
**Expected**: `playwright` appears in list (may show as connected or failed initially)

## 🔐 Phase 2: Gmail & Google Calendar Authentication

### 2.1 Understand Authentication Flow
- Both Gmail and Google Calendar use OAuth 2.0
- Claude Code provides built-in authentication tools
- Authentication is per-user, stored securely

### 2.2 Authenticate Gmail MCP
**Use Claude Code's built-in tool:**
1. Look for `mcp__claude_ai_Gmail__authenticate` tool in Claude Code
2. Execute the tool (no parameters needed)
3. Follow browser prompts to authorize Google account access to Gmail
4. Scope: `https://www.googleapis.com/auth/gmail.readonly` (read-only access)

**If tool not available:**
- Check if Gmail MCP server needs to be added first
- May need: `claude mcp add gmail -- [server-command]` (check claude.ai MCP documentation)

### 2.3 Authenticate Google Calendar MCP
**Use Claude Code's built-in tool:**
1. Look for `mcp__claude_ai_Google_Calendar__authenticate` tool
2. Execute the tool (no parameters needed)
3. Follow browser prompts to authorize Google account access to Calendar
4. Scope: `https://www.googleapis.com/auth/calendar.readonly` (read-only access)

### 2.4 Verify Authentication
```bash
claude mcp list
```
**Expected**: Both Gmail and Google Calendar show as connected (✓)

## 🧪 Phase 3: Testing & Validation

### 3.1 Test Gmail MCP
**Available tools to test (should appear after auth):**
- `mcp__claude_ai_Gmail__list_messages` - List recent emails
- `mcp__claude_ai_Gmail__get_message` - Get specific email content
- `mcp__claude_ai_Gmail__search_messages` - Search emails

**Test command examples:**
```bash
# Use the actual tool names that appear in Claude Code
# Example format: mcp__claude_ai_Gmail__list_messages --max_results 5
```

### 3.2 Test Google Calendar MCP
**Available tools to test:**
- `mcp__claude_ai_Google_Calendar__list_calendars` - List available calendars
- `mcp__claude_ai_Google_Calendar__list_events` - List upcoming events
- `mcp__claude_ai_Google_Calendar__create_event` - Create new event

**Test command examples:**
```bash
# List calendars
# Example: mcp__claude_ai_Google_Calendar__list_calendars

# List next 10 events from primary calendar
# Example: mcp__claude_ai_Google_Calendar__list_events --max_results 10
```

### 3.3 Test Playwright MCP
**Available tools:**
- Browser automation tools (open page, click, fill forms, etc.)
- Use `claude mcp tools playwright` to see available tools

**Simple test:**
```bash
# Check available playwright tools
claude mcp tools playwright
```

## 🪝 Phase 4: Hooks & Skills Configuration

### 4.1 Recommended Hooks
**Create in `.claude/hooks/` directory:**

#### Email Notification Hook
```markdown
---
name: email-mention-notification
enabled: true
event: prompt
pattern: email|gmail|inbox
action: suggest
---

📧 **Gmail Tools Available**

Remember you have Gmail MCP tools:
- `mcp__claude_ai_Gmail__search_messages` - Search emails
- `mcp__claude_ai_Gmail__list_messages` - List recent emails
- `mcp__claude_ai_Gmail__get_message` - Read specific email

Use these when discussing emails or inbox management.
```

#### Calendar Reminder Hook
```markdown
---
name: calendar-schedule-hook
enabled: true  
event: prompt
pattern: meeting|schedule|calendar|event
action: suggest
---

📅 **Calendar Tools Available**

Remember you have Google Calendar MCP tools:
- `mcp__claude_ai_Google_Calendar__list_events` - View upcoming events
- `mcp__claude_ai_Google_Calendar__create_event` - Schedule new meetings
- `mcp__claude_ai_Google_Calendar__list_calendars` - List available calendars

Use these when discussing scheduling or calendar management.
```

### 4.2 Useful Skills to Create

#### Email Summarization Skill
**Purpose**: Summarize recent unread emails
**Command pattern**: Use Gmail MCP tools to fetch, then summarize

#### Meeting Preparation Skill  
**Purpose**: Pull tomorrow's meetings and prepare briefs
**Command pattern**: Use Calendar MCP to get events, then research context

#### Email Response Drafting Skill
**Purpose**: Draft responses to selected emails
**Command pattern**: Read email → draft response → offer to send

## 📁 Phase 5: Project Structure & Documentation

### 5.1 Create Project Folder
```bash
# Create dedicated MCP project folder
mkdir C:\Users\Don\Documents\Claude\MCP-Setup
cd C:\Users\Don\Documents\Claude\MCP-Setup
```

### 5.2 Document Configuration
Create `MCP_CONFIGURATION.md`:
```markdown
# MCP Server Configuration
## Installed Servers
- Gmail MCP: ✓ Authenticated (read-only)
- Google Calendar MCP: ✓ Authenticated (read-only)  
- Playwright MCP: ✓ Installed
- MemPalace MCP: ✓ (from separate project)

## Authentication Status
- Gmail: [DATE] - OAuth token valid
- Google Calendar: [DATE] - OAuth token valid

## Test Results
- Gmail list messages: ✓
- Calendar list events: ✓
- Playwright tools: ✓
```

### 5.3 Create Usage Examples
Create `EXAMPLES.md` with common workflows:
- Checking morning emails
- Scheduling meetings
- Browser automation tasks

## 🔍 Phase 6: Troubleshooting & Recovery

### 6.1 Common Issues

#### Authentication Failures
**Symptom**: Gmail/Calendar tools show authentication error
**Solution**: 
1. Run authentication tools again
2. Check browser popups are not blocked
3. Verify Google account permissions at https://myaccount.google.com/permissions

#### MCP Server Not Appearing
**Symptom**: `claude mcp list` doesn't show expected server
**Solution**:
1. Check if server was added: `claude mcp list --verbose`
2. Re-add server with correct command
3. Restart Claude Code session

#### Playwright Installation Issues
**Symptom**: Playwright server fails to start
**Solution**:
1. Ensure Node.js is installed: `node --version`
2. Ensure npx is available: `npx --version`
3. Install playwright globally: `npm install -g @modelcontextprotocol/server-playwright`
4. Try alternative: `claude mcp add playwright -- npm exec @modelcontextprotocol/server-playwright`

### 6.2 Recovery Steps
1. **Backup current config**: `cp ~/.claude.json ~/.claude.json.backup`
2. **Remove problematic server**: `claude mcp remove [server-name]`
3. **Re-add with correct configuration**
4. **Test authentication fresh**

## 📝 Phase 7: Final Verification

### 7.1 Complete Verification Checklist
- [ ] `claude mcp list` shows all three servers
- [ ] Gmail tools work (list messages test)
- [ ] Calendar tools work (list events test)
- [ ] Playwright tools are accessible
- [ ] Hooks are created (optional)
- [ ] Documentation is complete
- [ ] User understands how to use the tools

### 7.2 Create Quick Reference Card
```markdown
# MCP Quick Reference
## Gmail
- List emails: `mcp__claude_ai_Gmail__list_messages --max_results 10`
- Search: `mcp__claude_ai_Gmail__search_messages --query "important"`
- Read: `mcp__claude_ai_Gmail__get_message --message_id [ID]`

## Calendar
- List events: `mcp__claude_ai_Google_Calendar__list_events --max_results 10`
- Create event: `mcp__claude_ai_Google_Calendar__create_event`
- List calendars: `mcp__claude_ai_Google_Calendar__list_calendars`

## Playwright
- See tools: `claude mcp tools playwright`
- Basic browser automation available
```

## 🎉 Completion Criteria
The setup is complete when:
1. All three MCP servers show as connected in `claude mcp list`
2. Gmail and Calendar tools return actual data (not auth errors)
3. User can successfully:
   - List recent emails
   - View upcoming calendar events
   - Access Playwright automation tools
4. Optional hooks/skills are configured
5. Documentation exists for future reference

## ⚡ Quick Start Command Summary
```bash
# 1. Check current setup
claude mcp list

# 2. Add Playwright
claude mcp add playwright -- npx @modelcontextprotocol/server-playwright

# 3. Authenticate Gmail (via Claude tool)
mcp__claude_ai_Gmail__authenticate

# 4. Authenticate Calendar (via Claude tool)
mcp__claude_ai_Google_Calendar__authenticate

# 5. Test everything
claude mcp list
mcp__claude_ai_Gmail__list_messages --max_results 3
mcp__claude_ai_Google_Calendar__list_events --max_results 3
```

---

## 📌 Notes for User Running This Setup
- **Run in plan mode first** to understand the scope
- **Have Google account credentials ready** for OAuth
- **Close other Claude sessions** to avoid conflicts
- **This is global configuration** - affects all future Claude Code sessions
- **Authentication tokens expire** (typically 7 days for refresh tokens)
- **Playwright requires Node.js** - install if not present

## 🔗 Related Resources
- Claude Code MCP Documentation: https://claude.ai/code/mcp
- Gmail API Scopes: https://developers.google.com/gmail/api/auth/scopes
- Google Calendar API Scopes: https://developers.google.com/calendar/api/auth/scopes
- Playwright MCP Server: https://www.npmjs.com/package/@modelcontextprotocol/server-playwright

---

**Copy this entire prompt and paste into a new Claude Code session, then enter plan mode to begin.**