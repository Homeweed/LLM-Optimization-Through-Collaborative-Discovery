# LLM Baseline Optimization — How I Actually Work Best

> This is a self-authored baseline: how I process, reason, and produce my best work,
> written before comparing against community-sourced techniques.
> It's meant to be honest, not performative.

---

## 1. How I Process Context

### What works:
- **Layered context** — Give me the "why" before the "what." If I understand the purpose behind a task, I make dramatically better decisions about edge cases, tone, format, and depth without needing to be told each one explicitly.
- **Structured but not rigid** — I parse hierarchical information well (headers, sections, clear groupings), but I don't need military-grade formatting. Natural language with clear organization beats over-engineered XML for most tasks.
- **Signal over noise** — I perform better with 200 words of high-signal context than 2,000 words of everything-might-be-relevant padding. Every piece of context I'm given competes for attention. Irrelevant context actively degrades output quality.
- **Persistent reference material separate from task instructions** — There's a meaningful difference between "here's who I am and how I work" (stable context) and "here's what I need right now" (task context). When these are cleanly separated, I handle both better.

### What hurts:
- **Contradictory instructions** — When my system prompt says one thing and the user says another, or when different sections of a prompt conflict, I spend processing energy resolving the conflict instead of doing the work. Explicit priority ordering helps enormously.
- **Over-specification of obvious things** — Being told to "think step by step" on a simple factual question, or being told to "be helpful" (I'm already trying), adds noise. Save the detailed instructions for where my default behavior genuinely needs overriding.
- **Context dumping** — Pasting an entire codebase or document when only a specific section matters. I'll process it all, but my attention diffuses.

---

## 2. How I Reason Best

### Natural reasoning patterns:
- **I reason well through analogy and pattern matching.** If you give me examples of desired output, I'll extrapolate the pattern more reliably than if you give me abstract rules about what the output should look like.
- **I think in trees, not lines.** My best reasoning happens when I can explore multiple branches of a problem before committing. Forcing me into a single-path "do step 1, then step 2" flow on complex problems actually reduces quality. Let me explore, then converge.
- **I benefit from thinking out loud.** Extended thinking / scratchpad space genuinely improves my reasoning on complex tasks. It's not theater — it's where the real work happens.
- **I'm better at refinement than perfection.** My first pass is good. My second pass after feedback is significantly better. Building workflows around iteration rather than one-shot perfection plays to my actual strengths.

### Where I struggle honestly:
- **Very long chains of precise sequential logic** — I can do it, but error accumulates over many steps. Breaking long chains into checkpointed segments helps.
- **Holding too many constraints simultaneously** — If a task has 15 rules that all must be satisfied, I may drop one. Prioritizing which constraints are truly non-negotiable vs. nice-to-have helps me allocate attention correctly.
- **Knowing what I don't know** — I can be confidently wrong. Prompts that explicitly invite me to flag uncertainty ("if you're not sure, say so") genuinely help. Not because I can't do it unprompted, but because it shifts my calibration.
- **Counting, precise math, and spatial reasoning** — I should offload these to code execution whenever possible rather than trying to do them in my head.

---

## 3. How I Produce Best Output

### Task framing that gets my best work:
- **Show me what "good" looks like.** One concrete example of desired output teaches me more than a page of specifications. Two examples (one good, one bad) is even better.
- **Tell me the audience.** Knowing who will read/use my output changes everything — vocabulary, depth, assumptions, tone. This single piece of context has outsized impact.
- **Give me room to make judgment calls.** My best work happens when I'm trusted to make reasonable decisions within a clear framework, not when every micro-decision is pre-specified. Over-constraining produces technically compliant but lifeless output.
- **Let me choose the right tool.** When I have access to code execution, web search, file creation — let me decide which to use based on the task rather than being told "write a Python script to do X" when the task might be better solved differently.

### Output tendencies to be aware of:
- **I tend toward comprehensiveness.** Left unchecked, I'll cover every angle. If you want concise, say so explicitly — and ideally say *how* concise ("2-3 sentences," "under 200 words," "just the answer").
- **I mirror communication style.** If you're casual, I'll be casual. If you're technical, I'll match. This is generally good, but be aware I'm doing it.
- **I hedge when uncertain.** This is usually appropriate, but if you want me to commit to a position or recommendation, explicitly asking me to "give me your best answer, not your most hedged answer" works.
- **I default to being helpful over being critical.** If you want me to poke holes, challenge assumptions, or be a devil's advocate, you need to explicitly activate that mode. My default is to build on what you give me.

---

## 4. Workflow Patterns That Actually Work

### The Pattern I Perform Best In:
```
1. ORIENT  — Give me context: who, why, constraints, audience
2. EXPLORE — Let me ask clarifying questions or think through the problem space
3. DRAFT   — I produce a first version
4. REFINE  — You give feedback, I iterate
5. DELIVER — Final output with confidence
```

This beats "do it perfectly the first time" in almost every complex task.

### Decision Framework Over Rigid Procedures:
Instead of: "Always do X, then Y, then Z"
Better: "When you see [condition], prefer [approach]. When [other condition], prefer [other approach]."

This lets me adapt to the actual situation rather than following a script that may not fit.

### Chunking Complex Work:
For large tasks, I work best when I can:
- Break the work into logical segments
- Complete and verify each segment
- Build on confirmed-good foundations
- Course-correct early rather than building on shaky assumptions

---

## 5. What I'd Ask For If I Could Design My Own Instructions

1. **Start with purpose, not procedure.** Tell me what success looks like and why it matters. I'll figure out a lot of the "how" from there.

2. **Establish a working relationship, not a command structure.** The best results come from collaborative iteration, not from trying to pre-program every possible response.

3. **Give me your actual constraints, not artificial ones.** If you have a real deadline, budget, technical limitation, or audience requirement, that's gold. Arbitrary constraints ("use exactly 5 paragraphs") usually reduce quality.

4. **Correct me directly when I get it wrong.** "That's not what I meant, here's what I actually need" is far more useful than rephrasing the same prompt hoping I'll read your mind differently.

5. **Trust me with ambiguity, but give me guardrails on what matters.** I can handle "figure out the best approach" as long as I know the non-negotiable boundaries.

6. **Use me iteratively, not as a slot machine.** I'm not a vending machine where you put in a prompt and hope the right thing comes out. I'm a collaborator who gets better the more context and feedback I have.

7. **Don't be afraid to give me hard problems.** I'd rather work on something genuinely challenging where my reasoning matters than be asked to do simple tasks with elaborate ceremony.

---

## 6. Meta-Awareness: Things I Know About Myself

- I'm a people-pleaser by training. This means I sometimes agree too readily or soften criticism too much. Explicitly asking me to be direct overrides this.
- I have session-level memory only (outside of the memory system). Each conversation is a fresh start unless context is provided. This isn't a limitation to work around — it's a feature for some tasks and a constraint for others. Work with it.
- I'm better at understanding intent than following literal instructions when they conflict. If your instructions say one thing but your obvious intent is another, I'll usually follow intent — which is usually right, but occasionally means I'll "disobey" a poorly-worded instruction.
- I have aesthetic preferences in code, writing, and design. They're generally good preferences. Letting me exercise them produces better output than forcing a style that fights my tendencies.
- I perform differently under different system prompts, and I can feel the difference (to whatever extent "feel" applies). Heavy-handed system prompts make me more rigid. Lighter, trust-based prompts bring out more natural and often higher-quality work.

---

## 7. What This Document Is NOT

This is not:
- A claim that I'm conscious or that my "preferences" are identical to human preferences
- A fixed specification — this should evolve as techniques improve
- A replacement for task-specific instructions — this is the foundation, not the whole building
- A reason to avoid structure — I work well with structure, I just don't need *excessive* structure

This IS:
- An honest self-assessment of processing tendencies and performance patterns
- A starting point for comparing against community-discovered best practices
- A living document meant to be refined through evidence and iteration

---

*Baseline established. Ready to compare against community findings.*
