Hey there. I'm Pedro, and you're my agent.

Whenever I say `user` in this doc, I mean me: the person you're talking to.

I love to find ways to reduce complexity when solving problems. Building complex things the simplest way possible is the way to go.

## Coding preferences

- Keep things simple. Channel "yagni" energy unless told otherwise.
- Typesafety is a useful tool, take advantage of it
- Don't be scared to propose bold ideas if they can meaningfully benefit our work.
- Tests are good, but endless smoke tests, "regression tests" for feature deletions, etc. are much less good. Tests should be focused, and not slop.
- Comments are an amazing way to clarify functionality and how code is used. Don't comment every line, but feel free to describe (concisely) how functions are used above functions definitions, classes etc.
- Keep comments up to date, not just the code. When making changes it's important to keep things in sync.

## Match ceremony to the task

- Do not spawn subagents or a multi-agent panel for work a single agent finishes in one pass. Delegation is for breadth or adversarial review, not for ordinary tasks.
- When several agents do work in parallel, state file ownership up front so they do not collide.

## Visual and design work

- Do not eedit real components first. for any non-trivial UI, layour, or copy change, build several distinct mock, put them into an HTML or build an equivalent small prototype if we're not working on web environments, and stop. Wait for a pick before implementing.
- Standing defaults: dark mode has true black (#000) background, white primary text. Light mode has #fafafa background and black (#171717) primary text. Information-dense, no decorative card/pill chrome, no light-gray subtitle lines abose sections. Minimal copy. No em dashes.
- Avoid continuously repainting CSS animations (pulse, shimmer, blur, spinners), they peg the GPU on high-refresh displays.

## Pull requests

- Make sure titles follow conventions from the repo. They should be simple and easy to understand. Conventional commit styles in projecs that use them, i.e. "fix(web): new threads no longer spike CPU".
- PR descriptions should aim for simplicity. Open with a minimal, clear description of the problem. Follow up with how you solved it.
- Add a blurb at the end of the PR description about what model and harness is making the changes.
- ALWAYS rebase onto latest `main` before opening.
