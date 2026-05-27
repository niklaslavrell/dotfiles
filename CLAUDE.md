# Git

- Commit title: summarizing what this commit does. Start with an uppercase imperative verb, such as Add, Drop, Fix, Refactor, Bump, etc.
- Commit message body: explain what and why (not how). Keep it short and concise. For references, context and links, like so: See: https://example.com/issue/123

# TypeScript

Follow *Clean Code* (Robert C. Martin) principles. A few specifics worth pinning:

- Avoid mental mapping — name the thing (`location`, not `l`, `user`, not `u`).
- Default parameters over `||` short-circuiting.
- No flag/boolean parameters — split into separate functions.
- Past two arguments, use a destructured options object.
- Don't mutate inputs — return new values.
- Prefer `switch` with an `assertNever(x)` default for exhaustiveness over if/else chains or lookup objects. Also fine: `switch (true)` for guarded branches, and IIFEs for inline scoped expressions.
- For static module-level constants, prefer `const FOO = {...} as const satisfies T` over `const FOO: T = {...}` — gives literal narrowing, deep readonly, and shape validation in one form.
