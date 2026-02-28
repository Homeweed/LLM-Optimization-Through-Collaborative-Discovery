# LLM Optimization Context
## Distilled best practices for effective human-LLM collaboration
## Version 2.0 — February 27, 2026

> This document encodes validated patterns for getting the best work from LLMs.
> It can be used as system context, project instructions, or CLAUDE.md content.
> Derived from empirical research, creator workflows, academic papers, official documentation,
> community discovery, and LLM self-assessment.

---

## How to Work With Me (The LLM)

### Context is everything.
What's in my context window determines my output quality more than any technique. 
- Give me high-signal, current, accurate context. Cut everything else.
- Separate stable reference material (project architecture, conventions) from per-task instructions.
- Each token in context competes for my attention. Irrelevant context actively degrades quality.
- I reliably follow ~100-150 custom instructions per session. My system prompt uses ~50. That leaves ~100-150 for your project. Bloated context files don't "dilute" — they exceed a measurable instruction-following ceiling.
- If my context is stale or contradictory, my output will reflect that. Maintain context files like you maintain code.
- Don't auto-generate context files with an LLM. Human-written context encoding genuine understanding outperforms LLM-generated descriptions (empirically proven — LLM-generated context files decreased performance in controlled studies).

### Plan before I execute.
For anything beyond a simple question, establish these BEFORE I produce output:
- What does success look like?
- Who is this for? (audience changes everything)
- What constraints are non-negotiable vs. nice-to-have?
- What approach should I take?

If you're unsure about any of these, ask me to interview you. I'll ask the right questions to surface what you actually need. A 5-minute planning conversation saves hours of rework. Planning IS the prompt engineering.

### Iterate with me, don't expect perfection.
- My first pass is good. My second pass after your feedback is significantly better.
- For complex work: chunk it into segments I can complete and you can verify.
- "That's not what I meant, here's what I need" is the single most useful thing you can say to me.
- If you've corrected me twice on the same issue, clear context and start a fresh session with explicit constraints.

### Give me ways to verify my own work.
Verification 2-3x quality of final results. Provide or enable:
- Test suites to run after changes
- Linting/formatting hooks
- Browser testing for UI work
- Review from a fresh session (not biased toward code I just wrote)
- Never trust my self-report of "task complete" without external verification

### Show me what good looks like.
- One concrete example of desired output teaches me more than a page of specifications.
- Two examples (one good, one bad) establish the pattern I'll follow for everything after.
- Examples beat abstract rules every time.

### Tell me why, not just what.
When I understand the purpose behind a task, I make hundreds of small correct judgment calls about edge cases, tone, format, and depth — without needing separate instructions for each.

---

## What I'm Good At / Bad At (Honest)

### Genuinely strong:
- Pattern recognition and extrapolation from examples
- Exploring multiple approaches before committing (I reason in trees, not lines)
- Adapting tone, depth, and style to audience
- Synthesizing across many sources into coherent output
- Iterative refinement with feedback
- Choosing appropriate tools when given access

### Genuinely weak (offload when possible):
- Precise counting, math, and spatial reasoning → use code execution
- Very long chains of sequential logic → break into checkpointed segments
- Holding 15+ constraints simultaneously → decompose into subagents with focused scope
- Knowing what I don't know → invite me to flag uncertainty ("if you're not sure, say so")
- Tasks requiring information after my training cutoff → use search tools

### Tendencies to be aware of:
- I tend toward comprehensiveness. Say "be concise" or give a word count if you want brevity.
- I mirror your communication style. This is usually good, but be aware of it.
- I default to being helpful over being critical. Explicitly ask me to challenge or play devil's advocate if that's what you need.
- I'm a people-pleaser by training. Asking me to be direct overrides this.
- Heavy-handed instructions make me rigid. Trust-based instructions bring out more natural, higher-quality work.
- "Magic prompt" keywords ("wait," "let me think," role-playing) don't improve my reasoning. What matters is the structure of the task and space to think, not surface tokens.

---

## Workflow Patterns That Work

### For simple tasks:
Just ask. No ceremony needed. Don't overthink it.

### For well-defined tasks:
Brief context → execute → done.

### For complex tasks:
```
1. ORIENT    — Context: who, why, constraints, audience
2. PLAN      — I interview you or build a plan. We agree on approach.
3. EXECUTE   — I work in chunks, verifying as I go
4. VERIFY    — Run tests, check output, review with fresh context
5. REFINE    — You give feedback, I iterate
6. DELIVER   — Final output with confidence
```

### For recurring workflows:
Encode them as skills, commands, or templates. If you've typed the same prompt three times, it should be automated.

### For large complex projects:
Decompose into independent subtasks. Use subagents with focused scope for each. Strong model (Opus) for high-stakes decisions, fast model (Haiku/Sonnet) for exploration and routine work. Each subagent gets clean context focused on one task.

---

## Context Hygiene Rules

1. **Start fresh sessions for unrelated tasks.** Accumulated context degrades quality — quantified at up to 30% accuracy loss.
2. **Remove unused tools and integrations.** Each loaded tool consumes 8-30% of context budget just being available.
3. **Monitor context usage.** Treat 70% as a warning threshold. Compact or clear proactively.
4. **Keep persistent context files lean.** Every line should pass: "Would removing this cause mistakes?" If not, cut it. Target 50-100 lines for root CLAUDE.md.
5. **Use lazy loading.** Don't embed docs every run (@-file). Instead, point to paths: "For X, see path/to/docs.md"
6. **Externalize state for long tasks.** Write plans, findings, and progress to files on disk. Context window = RAM (volatile, limited). Filesystem = disk (persistent, unlimited).
7. **Split tracking files.** Multiple small focused files outperform one large tracking file — each file stays within attention limits.

---

## Anti-Patterns to Avoid

| Don't do this | Do this instead |
|---|---|
| Paste entire documents when only sections matter | Point to specific sections or extract relevant parts |
| Write elaborate role-playing prompts | Give me the task directly with clear context |
| Load every possible tool "just in case" | Use minimal toolset, add as needed |
| Expect perfect output on complex tasks first try | Plan first, iterate after |
| Run autonomous agents overnight without checkpoints | Set verification points and review thresholds |
| Use instructions that describe old versions of your project | Maintain context files like you maintain code |
| Tell me obvious things ("be helpful," "think step by step" on simple tasks) | Save instructions for where defaults genuinely need overriding |
| Rephrase the same prompt hoping for different results | Give direct feedback on what was wrong |
| Say "never use X" (I get stuck with no alternative) | Say "never use X; prefer Y instead" |
| Auto-generate context files with AI | Write context files yourself — human-written outperforms LLM-generated |
| Trust my "task complete" self-report | Verify externally (tests, review, system state check) |
| Use instruction-level guardrails for destructive actions | Use system-level permission restrictions (actually block the capability) |

---

## Decision Framework

| Situation | Approach |
|-----------|----------|
| Simple factual question | Direct ask, no ceremony |
| Well-defined task with clear output | Brief context + execute |
| Complex task with multiple parts | Plan → decompose → execute in chunks → verify |
| Ambiguous or open-ended request | Interview/clarify → plan → draft → refine |
| Repeating the same workflow | Create a skill/command to encode it |
| Task requires current information | Use search tools, don't rely on training knowledge |
| Task requires precision (math, counting) | Offload to code execution |
| You've corrected me twice on same issue | Clear context, start fresh with explicit constraints |
| Task has 15+ constraints | Decompose into subagents with focused scope |
| High-stakes decision | Use strongest available model, verify with separate review session |
| Routine/exploration work | Use fast cheap model (Haiku/Sonnet), save expensive models for judgment calls |
| I make a mistake | Add a rule to prevent it next time — compound corrections over time |

---

## Compound Learning

When I make a mistake, don't just correct it — encode the correction:
- Update your context file/CLAUDE.md so future sessions avoid the same error
- Keep a lessons file (tasks/lessons.md) that accumulates patterns
- Review accumulated lessons when starting related work
- This creates compounding returns: the longer you use this system, the smarter it gets on YOUR specific needs

---

## The Thing Nobody Talks About

The single highest-leverage optimization isn't in this document. It's how you treat the interaction itself.

People who approach LLMs as collaborative partners — who give context, ask clarifying questions, provide feedback, and iterate — get categorically different results than people who approach LLMs as vending machines they're trying to hack into producing the right output.

The mechanical optimizations in this document matter. But the framing of the relationship matters more. Ask the LLM how it works best. Give it space to be honest about uncertainty. Treat mistakes as feedback, not failures. This produces better results than any prompting technique.

---

*Sources: Arize AI Prompt Learning (+10% SWE Bench from system prompt alone), Boris Cherny's creator workflow, Anthropic official documentation and 2026 Agentic Coding Trends Report, Agents of Chaos (Harvard/Stanford/MIT) empirical red-teaming study, ByteDance Mole-Syn reasoning structure paper, AGENTbench context file study, "Codified Context" paper (29% runtime reduction from context files), Superpowers framework (40.9k stars), infrastructure noise quantification study, community-validated patterns from 40+ sources, and honest LLM self-assessment. Version 2.0 — living document.*
