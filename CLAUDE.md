# MemPalace DeepSeek Integration - Complete Workflow Guide

## Quick Reference
- **GitHub Repo**: https://github.com/Shinobister/MemPalace-DeepSeek
- **MCP Servers**: mempalace (✓), playwright (✓), Gmail/Calendar (needs auth)
- **Context Strategy**: Memory-first workflow for DeepSeek's 128k context window

---

## 📋 Pre-Session Setup Checklist (Before Starting Claude Code)

### 1. Verify Environment
```bash
# Check Python availability
python --version  # Should be 3.14+

# Check mempalace installation
PYTHONIOENCODING=utf-8 python -m mempalace --help

# Check MCP servers
claude mcp list
```

### 2. Navigate to Project Directory
```bash
cd C:\Users\Don\Documents\Claude\MemPalace
```

### 3. Verify Git Status
```bash
git status
git pull origin main  # If remote changes exist
```

---

## 🚀 Session Startup Procedure (When Claude Code Opens)

### Step 1: Load Memory Context
```bash
# Check memory status and load context
mempalace_status

# Get wake-up context (~600-900 tokens)
mempalace wake-up
```

**Expected Output**: L0 identity (if configured) + L1 essential story showing project files and recent context.

### Step 2: Check Project State
```bash
# Verify files are indexed
PYTHONIOENCODING=utf-8 python -m mempalace status

# Check for recent changes
git status
git log --oneline -5
```

### Step 3: Begin Work
Now you're ready to enter plan mode or start working.

---

## 🗺️ Plan Mode Protocol

### Before Entering Plan Mode
1. **Run memory search** for relevant context:
   ```bash
   mempalace search "project goals" OR mempalace search "recent work"
   ```

2. **Check wake-up context** to understand current state:
   ```bash
   mempalace wake-up
   ```

3. **Enter plan mode** with this context loaded.

### During Plan Mode
- Use `mempalace_search` instead of bulk file reading
- Reference discovered context from memory search
- Plan based on L1 essential story from wake-up

### After Plan Approval
- Store plan in memory:
  ```bash
  mempalace_add_drawer "AAAK: Plan approved for [task]. Approach: [summary]"
  ```

---

## 🔧 Task Execution Workflow

### Memory-First Search Pattern
**Instead of**: Reading entire files
**Do**: 
```bash
# Search for specific concepts
mempalace search "authentication"

# Search for file patterns  
mempalace search "CLAUDE.md"

# Search for recent changes
mempalace search "AAAK"
```

### During Task Execution
1. **Search before reading**: Always try `mempalace search` first
2. **Read selectively**: Only read files when search doesn't yield needed context
3. **Stay in context window**: Monitor token usage by avoiding bulk file reads

### Task Completion Protocol
At the end of each significant task:
```bash
mempalace_add_drawer "AAAK: [Action]. Artifacts: [files created/changed]. Assumptions: [validated]. Knowledge: [gained]"
```

**Example**:
```bash
mempalace_add_drawer "AAAK: Created GitHub repository. Artifacts: MemPalace-DeepSeek repo, remote origin configured. Assumptions: GitHub credentials valid, branch naming matches. Knowledge: API creation successful, git push workflow operational"
```

---

## 🔒 Session Closure Procedure

### Before Exiting Claude Code
1. **Save final progress**:
   ```bash
   mempalace_add_drawer "AAAK: Session ending. Last task: [description]. Next steps: [todo]"
   ```

2. **Commit changes** (if applicable):
   ```bash
   git add .
   git commit -m "Session work: [brief description]"
   git push origin main
   ```

3. **Index new files**:
   ```bash
   PYTHONIOENCODING=utf-8 python -m mempalace mine .
   ```

4. **Verify memory state**:
   ```bash
   PYTHONIOENCODING=utf-8 python -m mempalace status
   ```

### Safe Exit Checklist
- [ ] All progress saved to memory via `mempalace_add_drawer`
- [ ] Git changes committed and pushed (if working with tracked files)
- [ ] New files mined into memory database
- [ ] Wake-up context reflects latest state

---

## 🔄 Relaunch Instructions (After Exiting/Reopening Claude)

### If Claude Code Was Completely Closed
1. **Open Claude Code** and navigate to project directory
2. **Skip MCP reconfiguration** - servers are globally configured
3. **Follow Session Startup Procedure** (section above)

### No Need to Specify
- **MCP servers**: Already globally configured (`mempalace`, `playwright`)
- **Python environment**: Uses system Python 3.14+
- **Memory database**: Persists in `.mempalace/` directory

### Quick Relaunch
```bash
cd C:\Users\Don\Documents\Claude\MemPalace
mempalace_status
mempalace wake-up
# Ready to work
```

---

## 🛠️ Maintenance Tasks

### Weekly Maintenance
1. **Compress memory** (if drawers exceed 50+):
   ```bash
   PYTHONIOENCODING=utf-8 python -m mempalace compress
   ```

2. **Verify database integrity**:
   ```bash
   PYTHONIOENCODING=utf-8 python -m mempalace status
   PYTHONIOENCODING=utf-8 python -m mempalace wake-up
   ```

3. **Update dependencies**:
   ```bash
   pip install --upgrade mempalace
   ```

### Monthly Maintenance
1. **Review and clean old drawers**:
   ```bash
   # Search for outdated entries
   PYTHONIOENCODING=utf-8 python -m mempalace search "deprecated"
   ```

2. **Backup memory database**:
   ```bash
   # Copy .mempalace directory to backup location
   cp -r .mempalace ~/backups/mempalace-$(date +%Y%m%d)
   ```

3. **Sync with GitHub**:
   ```bash
   git pull origin main
   git push origin main
   ```

---

## 🚨 Troubleshooting

### Common Issues & Solutions

**Issue**: `mempalace_status` not found
**Solution**: MCP server not running. Check with `claude mcp list`

**Issue**: Unicode encoding errors
**Solution**: Always prepend `PYTHONIOENCODING=utf-8` to mempalace commands

**Issue**: Search returns no results
**Solution**: Run `PYTHONIOENCODING=utf-8 python -m mempalace mine .` to re-index

**Issue**: Wake-up context empty
**Solution**: Check `PYTHONIOENCODING=utf-8 python -m mempalace status` for indexed files

### Recovery Steps
1. **Restart MCP server**:
   ```bash
   claude mcp restart mempalace
   ```

2. **Re-index files**:
   ```bash
   PYTHONIOENCODING=utf-8 python -m mempalace mine .
   ```

3. **Verify configuration**:
   ```bash
   claude mcp list
   PYTHONIOENCODING=utf-8 python -m mempalace --help
   ```

---

## 📊 Performance Optimization

### For DeepSeek's 128k Context Window
1. **Always search first**: `mempalace search` before `Read`
2. **Use wake-up context**: 600-900 tokens vs. 1000s for file reads
3. **AAAK shorthand**: Concise memory entries
4. **Regular compression**: Keep drawer count manageable

### Memory Efficiency Tips
- **Drawer limit**: Target 20-30 active drawers
- **Search specificity**: More specific queries yield better results
- **Regular mining**: Index new files immediately after creation

---

## 📞 Support Reference

### Key Files & Locations
- **Memory Database**: `.mempalace/` (gitignored)
- **Configuration**: `mempalace.yaml`, `entities.json`
- **Documentation**: `README.md`, `PROJECT_CONTEXT.md`
- **MCP Setup**: `MCP_SETUP_PROMPT.md` (for separate project)

### Global Configuration
- **MCP Servers**: In `~/.claude.json` (global)
- **Git Credentials**: `~/.git-credentials`
- **Python**: System Python 3.14.3

### Quick Test Commands
```bash
# Test full workflow
mempalace_status
mempalace wake-up
mempalace search "workflow"
PYTHONIOENCODING=utf-8 python -m mempalace status
claude mcp list
```