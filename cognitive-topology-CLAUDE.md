# Project: Cognitive Topology

## What This Is

Interactive 3D visualization of AI cognition built in Three.js. Features a crystalline core, transformer layer shells, attention particle streams, and semantic clusters. Includes real-time chat connected to the Anthropic API with plans for neural network hooks to visualize real attention weights. Currently being migrated from browser-based development to Claude Code.

## Stack & Conventions

- Three.js r128 (loaded via CDN — do NOT upgrade without testing, r142+ has breaking API changes)
- Vanilla JS — no React, no build system currently
- Anthropic API for real-time chat integration
- Single HTML file architecture (may need to split as complexity grows)

## How to Run / Test / Build

```bash
# Local development — just serve the file
python3 -m http.server 8080
# Then open http://localhost:8080

# No build step, no dependencies to install beyond serving static files
# API calls go direct to Anthropic — requires ANTHROPIC_API_KEY in environment or hardcoded (fix this)
```

## Key Files

- `index.html` — everything lives here currently (entry point, scene, shaders, chat, API calls)
- Handoff document from prior session — [reference path once established in repo]

## Project-Specific Rules

- Three.js r128 only — do NOT use CapsuleGeometry (introduced r142), OrbitControls from examples CDN, or any post-r128 API
- Visual quality matters here — this is a creative/artistic project, not just functional. Aesthetic judgment applies.
- The crystalline core geometry is the visual anchor — changes to it affect everything else perceptually
- API key handling needs to move to environment variable or backend proxy before any public deployment
- When adding new visual elements: prototype in isolation first, then integrate. The scene is complex enough that interactions between particle systems, lighting, and transparency are non-obvious.

## Known Issues

- Everything in one file — will need to split into modules as features are added
- API key is not securely handled
- No test coverage (visual project — consider screenshot regression testing if this gets complex)
- Performance hasn't been profiled with all visual systems active simultaneously

## Project Lessons

- *(none yet — will accumulate as development continues in Claude Code)*
