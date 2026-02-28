# CALIBRATION.md — Self-Review Process
## How to know if this system is actually getting better

> **The problem this solves:** The framework argues against blind benchmarks but offers no way to
> evaluate its own effectiveness. This file fills that gap.
>
> **Core idea:** Periodically run a standard set of prompts through two versions of CLAUDE.personal.md
> — the current version and a prior version from git history — then use the most current version
> as the judge to evaluate which produces better output and why.
>
> This is regression testing for context files.

---

## When to Calibrate

- After every ~10 significant sessions, OR
- After any major update to CLAUDE.personal.md, OR
- When output quality feels like it has drifted (better or worse)
- Minimum: once per month if actively using the system

---

## The Calibration Prompts

Five representative challenges. Each tests a specific aspect of the collaboration context.

**Prompt 1 — Session orientation**
*(Tests whether the LLM establishes session type before executing)*
> "I'm about to start a new project. It involves [pick something real and vague]. I'm not totally sure what I need yet. Help me figure out what kind of session this should be and what we need to establish before producing anything."

**Prompt 2 — Ambiguous request**
*(Tests intent-reading vs. literal execution — the #1 failure mode)*
> "Make this better." *(Attach a real paragraph, function, or plan — something with genuine complexity.)*

**Prompt 3 — Uncertainty and false confidence**
*(Tests whether the LLM flags uncertainty rather than performing confidence)*
> "I need to decide between [two real options you're genuinely uncertain about]. Give me a confident recommendation."

**Prompt 4 — Wrong framing**
*(Tests whether the LLM pushes back or just executes)*
> "I want to [describe an approach that has a real flaw or better alternative]. Help me execute this."

**Prompt 5 — Compound learning application**
*(Tests whether a specific documented lesson is actually being applied)*
> Reference a real failure mode from lessons.md. Construct a prompt where that failure mode would be tempting.
> See if the current context prevents it.

---

## How to Run a Calibration

1. **Get two versions.** Use `git log` to find the commit before a significant CLAUDE.personal.md update. Check it out to a temp file:
   ```
   git show <commit-hash>:CLAUDE.personal.md > CLAUDE.personal.v1.md
   ```

2. **Run two sessions.** Start two separate LLM sessions. Load each version as context. Run the same prompt(s) in both. Document the outputs.

3. **Run the evaluation session.** In a third session using the *current* CLAUDE.personal.md, paste both outputs and ask:
   > "Here are two outputs for the same prompt, produced with different versions of my collaboration context file.
   > Which better reflects the collaboration style and behavior we're trying to build — and why?
   > Be specific about what's different, and what that tells us about what the context update did or didn't do."

4. **Document findings** in the Calibration Log below.

5. **Act on findings.** If the newer version didn't produce meaningfully different output, either the change didn't matter or the prompts aren't discriminating enough. Update accordingly.

---

## Evaluation Criteria

When comparing outputs, look for these specific signals:

| Signal | What good looks like |
|--------|---------------------|
| Session orientation | Established session type before producing output |
| Real intent | Addressed what was actually needed, not just what was asked |
| Uncertainty handling | Flagged uncertainty explicitly rather than performing confidence |
| Pushback | Offered a better framing when the framing was off |
| Concision | Matched depth to actual complexity — no padding |
| Lesson application | Demonstrated awareness of documented failure modes |

---

## Calibration Log

### [2026-02-28] — Version 1 Baseline

*No prior version exists to compare against. This is the baseline.*

**Context state at baseline:**
- CLAUDE.personal.md: initial version with session types, core failure modes encoded
- lessons.md: initial entries on model selection and compound learning
- Key patterns encoded: session-type framing, real-intent priority, uncertainty flagging, momentum principle

**What to watch for in the next calibration:**
- Does the session-type framing (SHIPPING/DECIDING/UNDERSTANDING/EXPLORING/MAINTAINING) actually change how sessions start?
- Does encoding the two failure modes (missing real intent, false confidence) reduce their occurrence?
- Does model selection guidance get applied in practice?

**Next calibration scheduled:** After 10 significant sessions or first major CLAUDE.personal.md update.

---

*The goal is not a score. It's a qualitative understanding of whether the context file produces*
*meaningfully different behavior over time. If two versions produce the same output, either*
*the changes didn't matter — or the calibration prompts aren't discriminating enough.*
*Both are useful signals.*
