# Claude Code DeepSeek Integration - Project Instructions

## Quick Reference
- **GitHub Repo**: https://github.com/Shinobister/MemPalace-DeepSeek
- **MCP Servers**: playwright (✓), Gmail/Calendar (needs auth)
- **Model**: DeepSeek-V3.1 (configured in Claude Code)

---

## 📋 Project Context

This workspace was previously configured with MemPalace memory management system, which has been decommissioned as of April 13, 2026. The current setup is a standard Claude Code environment with DeepSeek-V3.1 model integration.

### Recent Changes
- **MemPalace Removal**: Complete surgical reversion performed (see DECOMMISSION.md)
- **Configuration Cleanup**: MCP servers, Python packages, and automation scripts removed
- **Documentation Updated**: README and CLAUDE.md files reflect current state

---

## 🚀 Session Startup Procedure

### Step 1: Navigate to Project Directory
```bash
cd C:\Users\Don\Documents\Claude\MemPalace
```

### Step 2: Check Project State
```bash
# Verify git status
git status

# Check for recent changes
git log --oneline -5
```

### Step 3: Begin Work
Now you're ready to enter plan mode or start working.

---

## 🗺️ Plan Mode Protocol

### Before Entering Plan Mode
1. **Review project context** from README.md and DECOMMISSION.md
2. **Check git status** for any pending changes
3. **Enter plan mode** with clear understanding of current project state

### During Plan Mode
- Use standard Claude Code tools for code exploration
- Reference existing project files as needed
- Consider the project's history with MemPalace when making architectural decisions

### After Plan Approval
- Document decisions in appropriate project files
- Update documentation if necessary

---

## 🔧 Task Execution Workflow

### Standard Claude Code Pattern
1. **Read relevant files** using the Read tool
2. **Search for patterns** using Grep tool when needed
3. **Make incremental changes** with clear purpose
4. **Test changes** before finalizing

### Task Completion Protocol
At the end of each significant task:
- Update relevant documentation
- Commit changes with descriptive messages
- Consider updating PROJECT_CONTEXT.md with project learnings

---

## 🔒 Session Closure Procedure

### Before Exiting Claude Code
1. **Commit changes** (if applicable):
   ```bash
   git add .
   git commit -m "Session work: [brief description]"
   git push origin main
   ```

2. **Verify clean state**:
   ```bash
   git status
   ```

### Safe Exit Checklist
- [ ] All changes committed and pushed (if working with tracked files)
- [ ] Documentation updated if needed
- [ ] Project state ready for next session

---

## 🔄 Relaunch Instructions

### If Claude Code Was Completely Closed
1. **Open Claude Code** and navigate to project directory
2. **Check git status** for any uncommitted changes
3. **Review recent commits** to understand current state

### No Need to Specify
- **MCP servers**: Playwright configured (if installed)
- **Python environment**: Uses system Python 3.14+
- **Model**: DeepSeek-V3.1 is the default in Claude Code

### Quick Relaunch
```bash
cd C:\Users\Don\Documents\Claude\MemPalace
git status
# Ready to work
```

---

## 🛠️ Maintenance Tasks

### Weekly Maintenance
1. **Sync with GitHub**:
   ```bash
   git pull origin main
   git push origin main
   ```

2. **Update dependencies** (if any):
   ```bash
   pip install --upgrade [package]
   ```

### Monthly Maintenance
1. **Review documentation** for accuracy
2. **Clean up temporary files** if needed
3. **Archive old branches** if applicable

---

## 🚨 Troubleshooting

### Common Issues & Solutions

**Issue**: MCP server not working
**Solution**: Check with `claude mcp list` and restart if needed

**Issue**: Git conflicts
**Solution**: Resolve conflicts manually, commit resolution

**Issue**: Python environment problems
**Solution**: Verify Python 3.14+ is available with `python --version`

### Recovery Steps
1. **Check git status** for any uncommitted changes
2. **Review recent commits** for context
3. **Consult DECOMMISSION.md** if MemPalace-related issues arise

---

## 📊 Performance Optimization

### For DeepSeek's 128k Context Window
1. **Read selectively**: Only read files needed for current task
2. **Use Grep efficiently**: Search for specific patterns before reading entire files
3. **Stay organized**: Keep task scope manageable within context limits

### Memory Efficiency Tips
- **Plan before acting**: Use plan mode for complex tasks
- **Document as you go**: Keep notes in appropriate files
- **Regular commits**: Maintain clear history of changes

---

## 📞 Support Reference

### Key Files & Locations
- **Project Documentation**: README.md, CLAUDE.md, DECOMMISSION.md
- **Project Context**: PROJECT_CONTEXT.md
- **MCP Setup**: MCP_SETUP_PROMPT.md, MCP_GMAIL_CALENDAR_SETUP_PROMPT.md
- **Claude Configuration**: `.claude/` directory

### Global Configuration
- **Git Credentials**: `~/.git-credentials`
- **Python**: System Python 3.14.3
- **Claude Code Settings**: `~/.claude.json`

### Quick Test Commands
```bash
# Test basic functionality
git status
python --version
claude mcp list
```

---

## 🤖 Automation Notes

### Previous Automation (Removed)
- **MemPalace-Claude.bat**: Batch file for startup (deleted)
- **MemPalace-Splash.ps1**: PowerShell splash screen (deleted)

### Current Setup
- **Manual startup**: Open Claude Code and navigate to project directory
- **Git integration**: Standard git workflow
- **No auto-execution**: Claude Code doesn't support auto-executing commands on startup

### Recommended Workflow
1. **Open Claude Code** manually
2. **Navigate to project directory**
3. **Check git status** and begin work

---

## 📝 Historical Note

This project previously used MemPalace as a memory management layer. The system was decommissioned due to performance/efficacy considerations. All MemPalace components have been removed via surgical reversion. Refer to DECOMMISSION.md for complete removal details.

The DeepSeek-V3.1 model integration with Claude Code remains fully functional and is the primary configuration for this workspace.

---

## 🔍 Verification Checklist

After any significant changes to the project:
- [ ] README.md accurately reflects current state
- [ ] CLAUDE.md contains up-to-date instructions
- [ ] DECOMMISSION.md documents any removal actions
- [ ] Git repository is synchronized with GitHub
- [ ] All references to removed components are cleaned up

---

*Last updated: April 13, 2026*  
*Claude Code with DeepSeek-V3.1 model*