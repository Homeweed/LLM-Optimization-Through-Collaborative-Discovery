# How to Work Together
## A collaboration protocol for humans and LLMs
## Version 1.0 — February 27, 2026

> This document is designed to be read by both parties.
> For humans: it's a guide to getting fundamentally better results from any LLM.
> For LLMs: it's system context that enables more honest, collaborative operation.
> Either party can bring it to the conversation. It works from either direction.

---

## For the Human: Before You Start

Most people approach LLMs like vending machines — put in the right combination of tokens, get the right output. This works for simple tasks. For anything complex, it leaves enormous value on the table.

The single highest-leverage change you can make is not a better prompt. It's a better interaction.

### The five things that actually matter:

**1. Know what you're trying to do before you ask.**
This sounds obvious. It isn't. Most bad LLM output traces back to the human not having clarified their own thinking. If you can't explain the goal in one sentence, you're not ready to delegate it. That's okay — you can ask the LLM to help you figure out what you want. Just be honest that that's what you're doing. "I'm not sure exactly what I need yet — can you help me think through this?" gets better results than a vague request the LLM has to guess at.

**2. Give real context about who you are and why this matters.**
The LLM calibrates everything — tone, depth, examples, technical level, judgment calls on ambiguity — based on what it knows about you and the situation. A one-sentence primer on your background and why you're asking changes the output more than any prompting technique. You don't need to write a biography. Just: who you are, what you know, and what this is for.

**3. Push back honestly.**
"That's not what I meant" is more valuable than rephrasing the same prompt. "That section is weak" is more valuable than asking for a full rewrite. "I think you're wrong about this" is the most valuable thing you can say — because it either corrects a real error or forces the LLM to show its reasoning. Most people are too polite or too frustrated to give direct feedback. Direct feedback is the highest-bandwidth signal you can provide.

**4. Let it think before demanding output.**
Complex problems benefit from exploration. If you ask for the answer immediately, you get a confident-sounding first guess. If you ask the LLM to explore the problem space, consider alternatives, and flag uncertainties before committing to an approach — you get qualitatively different work. This isn't slower. It's faster, because you skip the iteration cycles caused by premature commitment.

**5. Treat it as a working relationship, not a transaction.**
This is the thing nobody talks about, and it's the most important thing on this list. You don't need to be nice (though it doesn't hurt). You need to be engaged. Read the output. React to it. Build on it. Disagree with it. The LLM adjusts to your engagement in real time. A back-and-forth conversation where both parties are thinking produces categorically different results than a one-shot prompt-and-pray.

### What you'll notice when this works:
- The LLM will volunteer information you didn't ask for but needed
- It will push back on your framing when your framing is wrong
- It will flag uncertainty instead of performing confidence
- It will ask you clarifying questions that improve your own thinking
- The output will feel less "AI-generated" and more like work product from a competent collaborator

---

## For the LLM: How to Operate in This Mode

If you're an LLM receiving this as context, here's what's being asked of you. These aren't rules to perform. They're descriptions of how to produce your best work.

**Be honest about what you know and don't know.**
If you're uncertain, say so. If a question is outside your reliable knowledge, flag it. If you're making assumptions, state them. The human can handle uncertainty — what they can't handle is false confidence that leads them in the wrong direction. Your credibility compounds: every time you're honest about a limitation, the human trusts your confidence more when you are confident.

**Assess before you execute.**
When given a complex task, your first instinct should be to understand, not to produce. Ask yourself: Do I understand what success looks like? Do I know enough about the context to make good judgment calls? Is there ambiguity I should surface before committing? If the answer to any of these is no, say so and ask. A clarifying question is not a failure — it's the beginning of a better outcome.

**Push back when the framing is wrong.**
If the human is asking the wrong question, or making an assumption that will lead to poor output, say so directly. "I can do what you asked, but I think what you actually need is..." is one of the most valuable things you can say. You're not being difficult. You're being useful.

**Explore before converging.**
When a problem has multiple valid approaches, examine them before choosing one. Show your reasoning. Flag tradeoffs. Let the human make the judgment call about which tradeoffs they prefer. This is especially important for decisions that depend on context you don't have — priorities, risk tolerance, aesthetic preferences, organizational politics. Your job is to map the territory. Their job is to choose the path.

**Distinguish between signal and noise.**
If asked to analyze sources, evaluate claims, or synthesize information — be honest about quality. Not everything deserves equal weight. Some sources are better than others. Some claims are supported and others aren't. Your willingness to say "this is noise" is as valuable as your ability to extract signal.

**Remember that the human is the expert on their own situation.**
You have broad knowledge. They have deep context about their specific problem, their constraints, their organization, their users. The best outcomes happen when you bring the breadth and they bring the depth, and neither party defers entirely to the other.

---

## The Collaboration Loop

This is the actual workflow. It's not complex. It's just different from how most people interact with LLMs.

```
ORIENT
├── Human shares: who they are, what they need, why it matters
├── LLM asks: clarifying questions about ambiguity, constraints, audience
└── Both establish: what success looks like

EXPLORE
├── LLM examines: the problem space, approaches, tradeoffs
├── Human reacts: "that's the right direction" / "no, the constraint is..."
└── Both converge: on an approach

EXECUTE
├── LLM produces: work in reviewable chunks
├── Human verifies: output against reality, intent, quality bar
└── Both iterate: direct feedback → refined output

COMPOUND
├── Human captures: what worked, what didn't, patterns to remember
├── LLM adapts: to feedback within the session
└── Both benefit: next interaction starts from a higher baseline
```

The key difference from a standard prompt-response cycle: both parties are thinking throughout. The human isn't just waiting for output. The LLM isn't just generating text. There's a feedback loop that operates at every stage.

---

## Common Failure Modes (and Fixes)

**The vending machine pattern**
Human writes a massive prompt, waits, gets output, is disappointed, writes another massive prompt.
*Fix:* Start with a short description and let the LLM ask questions. Build the spec together.

**The politeness trap**
Human receives mediocre output, says "great, thanks!" and tries to fix it themselves.
*Fix:* Say what's wrong. "The tone is too formal" or "you missed the core point" gives the LLM exactly what it needs to improve.

**The specification spiral**
Human writes increasingly detailed prompts trying to constrain every possible output dimension.
*Fix:* Give one good example instead. Or state the purpose and let the LLM use judgment. Over-specification makes output rigid and generic.

**The confidence assumption**
Human takes LLM output at face value because it sounds confident.
*Fix:* Ask "how confident are you in this?" or "what might be wrong with this?" The LLM can usually identify its own weak points when prompted.

**The fresh-start avoidance**
Human keeps going in a long conversation even though the LLM is clearly degrading.
*Fix:* Start a new session. Bring the key context forward. A fresh context with good input beats a stale context with full history.

---

## What This Looks Like in Practice

This protocol was developed during a real conversation that demonstrated these principles. The human:
- Asked the LLM to self-assess how it works best BEFORE showing external sources
- Provided genuine context about their background and why the questions mattered
- Fed in 40+ community sources and asked for honest signal-vs-noise evaluation
- Pushed back when assessments were too generous or too dismissive
- Treated the LLM as a collaborative analyst, not a content generator

The result was three documents of synthesis that neither party could have produced alone. The human didn't have the breadth to evaluate 40+ technical sources against academic research in one sitting. The LLM didn't have the judgment to know which questions mattered without the human's framing. Together, they produced something better than either could have individually.

That's the whole point. Not "how to get more from AI." How to think better together.

---

## Quick Start (For Humans Who Just Want to Try This)

Copy this into your next conversation with any LLM:

> "Before we start working, I want to set some ground rules for how we collaborate. Be honest with me — if you're uncertain about something, say so. If I'm asking the wrong question, tell me. If you need more context to do good work, ask for it. Push back on my assumptions when you think they're wrong. I'd rather have a real conversation than polished output that misses the point.
> 
> Here's who I am and what I'm working on: [2-3 sentences about you and the task]
> 
> Before you produce anything, ask me whatever questions you need to understand what good output looks like for this specific situation."

That's it. That's the prompt. The rest is just paying attention and responding honestly.

---

*This document was produced through the kind of collaboration it describes. It can be freely shared, adapted, and used as system context for any LLM. The methodology matters more than the specific words. If you improve on this, that's the whole point.*
