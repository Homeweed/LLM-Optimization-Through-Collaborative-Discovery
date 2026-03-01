# lessons.md — Compound Learning Log
## The memory layer of the framework

> **What this file is:** Accumulated corrections, patterns, and insights across sessions.
> **When to update:** When a mistake is corrected, a pattern is discovered, or something is worth remembering.
> **When to review:** At the start of related work, or after any period of inactivity.
> **Format:** `[DATE] Observation. Rule: What to do instead.`
>
> Signal only. No noise. This file earns its context budget.

---

## Communication
*How to frame requests, give feedback, interact effectively.*

- *(none yet — add as patterns emerge)*

---

## Failure Modes
*Things that went wrong and what to do differently.*

- *(none yet — add as patterns emerge)*

---

## Tool Use & Workflow
*Which tools work when, which don't, workflow patterns discovered.*

- *(none yet — add as patterns emerge)*

---

## Domain-Specific
*Discoveries about particular problem domains, codebases, or subject areas.*

- *(none yet — add per-project as needed)*

---

## Abandonment Log
*Things deliberately explored and set aside — and why. Prevents survivorship bias in documented findings.*

> Most logs capture what worked. This one captures what didn't — and why it mattered that we tried.
>
> **Status markers:**
> - `[DEFERRED]` — right idea, wrong time/scope/data. Has a re-entry condition. Should be reviewed periodically.
> - `[DECLINED]` — architectural or philosophical mismatch. Re-entry condition unlikely to change.
>
> **Format:** `[DATE] [STATUS] What we explored. Why we set it aside. Re-entry condition: what would change this assessment.`
>
> Reviewed as part of the CALIBRATION.md cycle. When new context arrives, check entries before starting new work — something deferred may now be ready.

- [2026-03-01] `[DEFERRED]` Session-level checksums (mid-session verification that the process matches what we'd prescribe). Set aside: git history + CALIBRATION.md already handle versioning; adding a mid-session ceremony creates overhead without clear benefit. Re-entry condition: if the framework is used in multi-agent or multi-user contexts where process drift becomes harder to detect after the fact.
- [2026-03-01] `[DEFERRED]` Cross-Model Portability section documenting where the framework breaks across models (GPT-4, Gemini, open models). Set aside: out of scope without empirical data; would require systematic cross-model testing we haven't done. Re-entry condition: when the framework is tested against a second model architecture with enough sessions to identify real divergence points.

---

## Model Selection
*Which model for which work — don't default to cheapest, match to cognitive demand.*

- [2026-02-28] High-level conceptual work (framework design, synthesis, strategic thinking, architectural decisions) requires genuine depth. Opus handles this materially better than Sonnet. Sonnet/Haiku are appropriate for execution-focused work: coding tasks, formatting, structured output, routine operations. The difference is noticeable. Rule: Match model to the cognitive demand of the task, not to the budget default.

---

## Meta / Process
*Lessons about the collaboration process itself.*

- [2026-02-28] Compound learning is aspirational without a trigger. Saying "add lessons here" isn't a mechanism. Rule: End every meaningful session by asking "what should we remember?" before closing. Use session-handoff-template.md.
- [2026-02-28] The session resets on every fresh context load. CLAUDE.md is the only bridge across sessions. The compound learning burden falls entirely on the human — I can't maintain continuity, only the human can. Rule: Treat CLAUDE.personal.md and lessons.md maintenance as high-stakes infrastructure, not optional hygiene.
- [2026-02-28] "Done well" is goal-relative, not universal. Completion looks different for SHIPPING vs. DECIDING vs. UNDERSTANDING. Rule: Establish what success looks like at session start before any output is produced.
- [2026-02-28] Safety guidance in the framework was buried in the analysis docs and never made it into the actionable files. Someone using only the templates gets zero safety guidance. Rule: Any CLAUDE.md template should include at minimum one explicit safety reference, especially for agent or tool-use workflows.
- [2026-03-01] Model Constellation (using a different model to review work, then evaluating the delta) was used for the first time in practice: Kimi 2.5 reviewed the framework and contributed 4 genuine additions out of ~10 points. The exercise worked — external model review surfaces blind spots that self-review misses. Rule: Treat multi-model review as a legitimate validation technique, not just a curiosity. Document it in CALIBRATION.md as a repeatable process.

---

*This file grows smarter with use. The goal is not volume — it's the rate at which new entries stop being needed because old ones already cover the pattern.*
