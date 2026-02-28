# LLM Optimization Through Collaborative Discovery
## A conversation, a methodology, and a set of tools

---

## What This Is

On February 27, 2026, a human and an LLM (Claude Opus 4.6) had an unusual conversation. Instead of asking "how do I use AI better?" the human asked the LLM to honestly assess how it works best — before either party looked at what anyone else was saying.

Then they stress-tested that self-assessment against 40+ community sources, 5 academic papers, Anthropic's official documentation, and a live analysis of what's actually viral versus what's actually useful.

What emerged was both a set of practical optimization documents AND a demonstration that the process of creating them — the collaborative methodology itself — is the optimization most people are missing.

This repository contains everything that came out of that conversation.

---

## Start Here — Make It Actionable

The fastest path to value is a `CLAUDE.md` in your project root. It shapes how your LLM works
with you before a single prompt is written.

**[CLAUDE.md](CLAUDE.md)** — Drop-in template. Personalize the marked sections. Takes ~10 minutes.
**[CLAUDE.personal.md](CLAUDE.personal.md)** — A worked example of a fully personalized version.
Use it as a reference for what yours should look like when done.

**To create your own:**
1. Copy `CLAUDE.md` into your project root
2. Fill in the `[PERSONALIZE]` sections — who you are, your project, your rules
3. Delete the comment blocks and placeholder text
4. Create a `lessons.md` alongside it — this is the compound learning mechanism
5. Use `session-handoff-template.md` at the end of meaningful sessions to close the loop
6. Run `CALIBRATION.md` periodically to verify the system is actually improving
7. Target 50–100 lines in CLAUDE.md itself. Less is more.

**On model selection:** Match the model to the cognitive demand of the task.
High-level design, synthesis, and strategic thinking benefit from the strongest available model (Opus).
Execution, formatting, and routine work are well-served by faster cheaper models (Sonnet/Haiku).
Don't default to cheapest — under-resourcing high-stakes reasoning has a cost.

---

## The Documents

### The Collaboration Protocol
**[HOW-TO-WORK-TOGETHER.md](HOW-TO-WORK-TOGETHER.md)**
Readable by humans as a guide, usable by LLMs as system context. Encodes the interaction patterns
that produced everything else. If you read one thing, read this.

### The Portable Reference
**[LLM-OPTIMIZATION-PORTABLE-v2.md](LLM-OPTIMIZATION-PORTABLE-v2.md)**
~2,000 words of validated, high-signal optimization patterns. Works with Claude, GPT, Gemini, or any LLM.
Full reference for the patterns summarized in CLAUDE.md — read this to understand the reasoning behind the rules.

### The Full Analysis
**[FINAL-SYNTHESIS-LLM-OPTIMIZATION.md](FINAL-SYNTHESIS-LLM-OPTIMIZATION.md)**
The comprehensive synthesis: all evidence, source assessments, research findings, the safety gap analysis,
and what's still missing. Shows the work — how each pattern was validated, what was discarded as noise, and why.

### The Baseline
**[llm-baseline-optimization.md](llm-baseline-optimization.md)**
The LLM's original self-assessment, written before examining any external sources. The foundation
everything else builds on. Read against the final synthesis to see where self-assessment aligned
with or diverged from community evidence.

### The Full Conversation
**[FULL-CONVERSATION.md](FULL-CONVERSATION.md)**
The complete, unedited conversation between a human (Josiah) and an LLM (Claude Opus 4.6) that
produced this repository. Long data pastes replaced with bracketed summaries for readability.
All dialogue preserved exactly as it occurred — a live example of the methodology in action.

---

## Key Findings (Summary)

**What actually works (empirically validated):**
1. Context engineering beats prompt engineering — optimizing what's in the context window is the highest-leverage change (+10% on SWE Bench from system prompt alone)
2. Planning before execution — 5-20 minutes of planning saves hours of rework, every time
3. External verification — never trust an LLM's self-report of "task complete" without checking
4. Fresh sessions per task — accumulated context degrades quality up to 30%
5. Subagent decomposition — focused scope per agent beats one agent holding everything
6. Compound learning — every mistake becomes a rule, creating compounding returns
7. The collaboration quality — how you interact with the LLM changes output more than any technique

**What doesn't work (despite being viral):**
- Role-playing prompts ("You are a Staff Engineer at Google") — keyword imitation proven ineffective
- Autonomous agent swarms without verification — produces false completion reports and cascading failures
- Massive context files — ~100-150 instruction ceiling, beyond which instructions get ignored
- "Magic prompts" — surface tokens don't produce reasoning (ByteDance Mole-Syn paper)

**What nobody is talking about:**
- The safety gap: Agents of Chaos (Harvard/Stanford/MIT) documented 10 real vulnerabilities from normal use of persistent agents — not adversarial attacks
- When NOT to use AI: best developers fully delegate only 0-20% of tasks
- The relational layer: collaborative interaction quality is the highest-leverage variable that no optimization guide addresses

---

## How to Use This

**I want to start immediately:**
Copy `CLAUDE.md` to your project root. Fill in the `[PERSONALIZE]` sections. Done.

**I want to understand why this works:**
Read `HOW-TO-WORK-TOGETHER.md`. Try the Quick Start prompt in your next LLM conversation.

**I want the full reference:**
Read `LLM-OPTIMIZATION-PORTABLE-v2.md` — this is the source for the patterns in CLAUDE.md.

**I'm building agent systems:**
Read the safety section in `FINAL-SYNTHESIS-LLM-OPTIMIZATION.md` before deploying anything with real tools. The Agents of Chaos findings are not theoretical.

**I want to see the methodology in action:**
Read `FULL-CONVERSATION.md` — the complete conversation that produced this repo, preserved as a working example.

---

## The Meta Point

The most valuable thing in this repository isn't any single document. It's the demonstration that a conversation between a human and an LLM, conducted with genuine curiosity and honest feedback from both sides, produces work that neither could produce alone.

The human brought judgment, domain expertise, and the ability to ask questions the LLM wouldn't think to ask itself. The LLM brought breadth, analytical rigor, and the ability to process and synthesize at a scale no human could match in one sitting.

The methodology — not the output — is the thing worth replicating.

---

## Files at a Glance

| File | What it is | When to use it |
|------|-----------|----------------|
| `CLAUDE.md` | Drop-in template | Copy to any project, personalize |
| `CLAUDE.personal.md` | Worked personalization example | Reference for what yours should look like |
| `lessons.md` | Compound learning log | Update every session; review before related work |
| `session-handoff-template.md` | End-of-session ritual | Fill in before closing any meaningful session |
| `CALIBRATION.md` | Self-review / benchmark process | Run every ~10 sessions or after major updates |
| `HOW-TO-WORK-TOGETHER.md` | Collaboration protocol | Read once; use as system context |
| `LLM-OPTIMIZATION-PORTABLE-v2.md` | Full reference (~2k words) | Deep dive into the patterns |
| `FINAL-SYNTHESIS-LLM-OPTIMIZATION.md` | Comprehensive analysis | Evidence, sourcing, safety findings |
| `llm-baseline-optimization.md` | LLM self-assessment baseline | Foundation / before-and-after comparison |
| `FULL-CONVERSATION.md` | Original conversation | Methodology in action |

---

*Created February 27, 2026. Updated as the methodology is applied. Freely shareable.*
*If you improve on this, that's the whole point.*
