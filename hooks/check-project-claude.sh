#!/bin/bash
# SessionStart hook — checks for project-level CLAUDE.md
# Deployed to: ~/.claude/hooks/check-project-claude.sh
# Registered in: ~/.claude/settings.json under SessionStart
#
# Purpose: Surface missing project context at session start so it gets
# created before work begins, not discovered mid-session.

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"

if [ ! -f "$PROJECT_DIR/CLAUDE.md" ]; then
    echo ""
    echo "┌─────────────────────────────────────────────────────────┐"
    echo "│  No CLAUDE.md found in this project.                    │"
    echo "│  Run /project-init to set up project context.           │"
    echo "│  This takes ~2 minutes and improves every session here. │"
    echo "└─────────────────────────────────────────────────────────┘"
    echo ""
fi

exit 0
