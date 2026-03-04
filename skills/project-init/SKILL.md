---
name: project-init
description: Use when starting work on a project that has no CLAUDE.md, or when the user asks to set up project context. Interviews the user with targeted questions, reads the project structure, and drafts a CLAUDE.md using the project template. The user reviews before anything is written.
---

# Project Init

Draft a project-level CLAUDE.md through a brief interview + codebase read. Human reviews before anything is written.

## Principles

- This file layers ON TOP of ~/.claude/CLAUDE.md — don't repeat global framework principles here
- Human-written context outperforms LLM-generated (empirically validated in lessons.md) — draft, don't dictate
- Keep it lean: 40–80 lines after the interview. More is worse.
- The draft is a starting point. The human owns the final file.

## Workflow

### 1. Read the project

Before asking anything, read:
- README.md or similar (what is this?)
- package.json / pyproject.toml / Cargo.toml / go.mod (what's the stack?)
- Any existing CLAUDE.md (if partially filled — improve rather than replace)
- Top-level directory structure (what are the key files/dirs?)

Summarize what you found in 2–3 sentences. This shows you did the work and lets the human correct wrong inferences before the interview.

### 2. Ask 3 targeted questions

Based on what you read, ask only the questions that aren't already answered by the codebase. Maximum 3. Examples:

- "What does success look like for this project right now — shipping features, stabilizing, exploring?" (→ session type tendencies)
- "Any hard constraints I should always know? (frameworks to avoid, APIs with quirks, deployment targets, etc.)"
- "What's the thing most likely to go wrong if I don't know about it?"

Do NOT ask questions you can answer from reading the code. Do NOT ask more than 3.

### 3. Draft the CLAUDE.md

Use this template. Fill in what you know. Leave blanks rather than guessing.

```markdown
# Project: [Name]

## What This Is

[2-3 sentences from README + your summary. What it does, who it's for, what stage.]

## Stack & Conventions

[From package.json / pyproject.toml / etc. Key dependencies, versions that matter.]

## How to Run / Test / Build

[Copy-pasteable commands. Read the README or scripts section for these.]

## Key Files

[3-6 files. Entry point, config, the one file that's most dangerous to touch.]

## Project-Specific Rules

[From the interview answers. 2-5 rules. Nothing that repeats framework.md.]

## Known Issues

[From the interview, or obvious from reading the code.]

## Project Lessons

- *(none yet)*
```

### 4. Present and confirm

Show the draft. Say: "This is a draft — edit anything before I write it. What needs changing?"

Do NOT write the file until the human confirms or provides edits.

### 5. Write and confirm

Write to `CLAUDE.md` in the project root. Confirm the path. Done.

## Wrap Up

Tell the user:
- Where the file was written
- What to update as the project evolves (Known Issues, Project Lessons)
- Reminder: project-specific lessons go here; cross-project lessons go in ~/.claude/collab/lessons.md
