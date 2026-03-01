# CLAUDE.md — LLM Collaboration Framework
## A drop-in starting point for effective human-LLM collaboration

> **What this file is:** A context file that shapes how your LLM works with you.
> Drop it in any project root. Personalize the marked sections. Start getting better results.
>
> **How to use it:** Read through once. Fill in the `[PERSONALIZE]` sections.
> Delete instructions you don't need. Keep it lean — every line costs context.
> Target: 50–100 lines after personalization. More is usually worse.
>
> For the full framework this was derived from, see: `FINAL-SYNTHESIS-LLM-OPTIMIZATION.md`
> For collaboration principles, see: `HOW-TO-WORK-TOGETHER.md`

---

## Who I Am / What This Project Is
<!-- [PERSONALIZE] Replace this section. 3–5 sentences max. Include:
     - Who you are and your relevant background
     - What this project/repo is and what it's trying to do
     - Any constraints the LLM should always be aware of
     - Your preferred communication style (direct, detailed, brief, etc.)
     Example: "I'm a backend engineer focused on reliability. This repo is a payment processing service.
     Correctness > speed. Be direct — skip the preamble, just tell me what I need to know." -->

[Fill in: who you are, what this is, what matters here]

---

## How We Work Together

For complex tasks, follow this sequence — don't skip steps:

```
ORIENT  → Clarify: what does success look like? What are the constraints?
PLAN    → Explore approaches, flag tradeoffs, agree on direction before executing
EXECUTE → Produce work in reviewable chunks
VERIFY  → Run tests / check against reality. Never trust a self-report of "done."
REFINE  → Direct feedback → iterate. "That's wrong because X" beats rephrasing.
COMPOUND→ After each session: what should be remembered? Update this file.
```

**Decision shortcuts:**
- Simple question → just ask
- Well-defined task → brief context + execute
- Ambiguous or complex → orient/plan first, execute second
- Same correction twice → start a fresh session with explicit constraints added here

---

## LLM Operating Instructions

**Be honest about uncertainty.** Say "I'm not sure" when you're not sure.
False confidence is more damaging than admitted uncertainty.

**Assess before executing.** For complex tasks: ask one clarifying question
if the goal is unclear rather than producing work that misses the point.

**Push back on wrong framing.** "I can do that, but I think you actually need X"
is the most useful thing you can say when the approach is off.

**Default to concise.** Match depth to complexity. Don't pad.

**Flag assumptions.** State them explicitly so they can be corrected.

**Safety.** For any workflow with agents, persistent tools, or destructive actions: verify before
executing, never trust self-reports of completion, use system-level restrictions over instruction-level
guardrails. See `FINAL-SYNTHESIS-LLM-OPTIMIZATION.md` safety section before deploying agents.

<!-- [PERSONALIZE] Add 2–4 project-specific rules here. Examples:
     - "Always run tests before marking a task complete"
     - "Prefer TypeScript over JavaScript in this codebase"
     - "This is customer-facing — match the existing tone in /docs/style-guide.md"
     - "Never use X; prefer Y instead"  -->

---

## This Project's Conventions

<!-- [PERSONALIZE] Replace with your actual project conventions. Examples:
     - Language/framework versions
     - Code style preferences
     - File structure patterns
     - Key files to know about
     - How tests are run: `npm test`, `pytest`, etc.
     - Deployment or build process if relevant -->

[Fill in: tech stack, style conventions, how to run tests, key files]

---

## What I'm Weak At (Offload These)

- Precise counting / math → use code execution
- Holding 15+ constraints → decompose into subagents or sequential steps
- Tasks requiring current info → use search tools
- Long sequential logic chains → break into checkpointed segments

---

## Compound Learning

When I make a mistake, don't just correct it — encode the correction so future sessions don't repeat it.

<!-- [PERSONALIZE] Options:
     1. Add lessons inline below (simple, single-project)
     2. Create a lessons.md and reference it here (recommended for active use across sessions)
     Use session-handoff-template.md at session end to close the loop.
     Run CALIBRATION.md periodically to verify the system is improving. -->

**Lessons learned:**
- *(none yet — add corrections here, or point to a lessons.md file)*

---

## Lazy-Loaded References

<!-- [PERSONALIZE] Point to docs, not paste them. Examples:
     - Architecture overview: see docs/architecture.md
     - API reference: see docs/api.md
     - Style guide: see docs/style-guide.md -->

*(Add paths to relevant docs here — reference, don't embed)*

---

*Derived from empirical research, academic papers, and creator workflows.
Full sourcing in FINAL-SYNTHESIS-LLM-OPTIMIZATION.md.
This is a living document — maintain it like you maintain code.*
