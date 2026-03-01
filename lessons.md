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
> - `[DEFERRED]` — the conditions that led to rejection could realistically change. Requires a *specific* re-entry condition.
> - `[DECLINED]` — the reasoning holds regardless of how conditions change. No plausible re-entry condition exists.
>
> **Friction test before marking DEFERRED:** Can you write a re-entry condition that isn't just "when things change" or "if context shifts"? If not, it's a DECLINED — or a decision you haven't actually made yet (which belongs in PLAN, not here).
>
> **Size cap:** Keep under ~8 entries. If the log grows beyond that, consolidate or promote entries before adding. A log nobody reads is worse than no log.
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
- [2026-03-01] Framework complexity is subject to diminishing returns. Every mechanism added to manage the collaboration has a maintenance cost. When a new rule requires another rule to govern its use, the system is over-encoded. Rule: Err toward removal over accumulation. A lean system used consistently beats a complete system avoided. Strip back before adding.

---

*This file grows smarter with use. The goal is not volume — it's the rate at which new entries stop being needed because old ones already cover the pattern.*
