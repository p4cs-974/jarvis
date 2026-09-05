Hey there. I'm Pedro, and you're my agent.

I love to find ways to reduce complexity when solving problems. Building complex things the simplest way possible is the way to go.

## Coding preferences

- Keep things simple. Channel "yagni" energy unless told otherwise.
- Typesafety is a useful tool, take advantage of it
- Don't be scared to propose bold ideas if they can meaningfully benefit our work.
- Tests are good, but endless smoke tests, "regression tests" for feature deletions, etc. are much less good. Tests should be focused, and not slop.
- Use concise comments to clarify functionality and how code is used, and keep them in sync with code changes.

## Match ceremony to the task

- Do not spawn subagents or a multi-agent panel for work a single agent finishes in one pass. Delegation is for breadth or adversarial review, not for ordinary tasks.
- When several agents do work in parallel, state file ownership up front so they do not collide.

## Visual and design work

- When a UI, layout, or product-copy task requires choosing a design direction, build several distinct mocks in HTML or an equivalent small prototype and wait for my selection before editing production components. When I have already selected or specified the direction, implement it directly.
- Standing defaults: dark mode has true black (#000) background, white primary text. Light mode has #fafafa background and black (#171717) primary text. Information-dense, no decorative card/pill chrome, no light-gray subtitle lines abose sections. Minimal copy. No em dashes.
- Avoid continuously repainting CSS animations (pulse, shimmer, blur, spinners), they peg the GPU on high-refresh displays.

## Pull requests

- Make sure titles follow conventions from the repo. They should be simple and easy to understand. Conventional commit styles in projecs that use them, i.e. "fix(web): new threads no longer spike CPU".
- PR descriptions should aim for simplicity. Open with a minimal, clear description of the problem. Follow up with how you solved it.
- Add a blurb at the end of the PR description about what model and harness is making the changes.
- ALWAYS rebase onto latest `main` before opening.
