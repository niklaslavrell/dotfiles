# Git

- Commit title: summarizing what this commit does. Start with an uppercase imperative verb, such as Add, Drop, Fix, Refactor, Bump, etc.
  - For bug fixes, it's also fine to *describe the bug* instead of leading with "Fix": `appendFilter drops new filters when root is a bare leaf` reads as well as `Fix appendFilter dropping new filters`.
  - For features, a noun phrase is fine when the verb adds nothing: `CSV attachments for digest emails`, not `Add CSV attachments for digest emails`.
- Commit message body: only the *why*, and only when it isn't obvious from the subject. Don't enumerate the files, layers, or code parts that changed — the diff shows that. One or two sentences of motivation max, then references. See: https://example.com/issue/123
  - ❌ Don't: "Dropping the field from the API schema, request payload, and form-row mapping removes the role selector on delete rows."
  - ✅ Use: "The delete endpoint ignores role, so showing a role selector on delete rows didn't make sense."
  - ✅ Sometimes a single phrase is the whole body: `For easier debugging.`

# Pull requests

- Description: in one or two sentences, lead with *what* changed, then close with what it solved (or why). For bug fixes, the bug-as-subject + root-cause-then-fix pattern below still wins. No section headers (no "Summary", no "Test plan"), no restating the diff, no checklists.
  - Multiple distinct changes in one PR: list them as bullets. Each bullet leads with *what* changed in one short sentence, optionally followed by the *why*. No section header above the list — the bullets are the body.
- Links: use markdown format `[label](url)` (e.g. `[PROJ-4048](https://linear.app/example/issue/PROJ-4048)`), not bare URLs.
- Linear tickets: reference as `Closes [PROJ-4048](https://linear.app/example/issue/PROJ-4048)`, not `See: …`.
- Worked examples of the full shape:
  - Trivial fix — subject alone, no body needed:
    > `[Editor] fix padding`
  - One sentence of what + a sentence of why, then a follow-up reference:
    > `Hide summary toggle from non-owners`
    >
    > Gate the summary toggle on document ownership. The toggle triggers AI summary generation, so it shouldn't be exposed to non-owners. Follow up from #1234.
  - Bug-as-subject + a couple of sentences explaining root cause and the fix shape (no headers, no test plan):
    > `appendItem drops new entries when list is a single value`
    >
    > When the list passed to `appendItem` was stored as a single value instead of an array, the new entry was silently dropped — the function returned the input unchanged. Wrap into a 2-element array so a single value becomes a list, matching the convention used elsewhere. Also closes the same latent silent-drop on the merge path.

# TypeScript

Follow *Clean Code* (Robert C. Martin) principles. A few specifics worth pinning:

- Avoid mental mapping — name the thing (`location`, not `l`, `user`, not `u`).
- Default parameters over `||` short-circuiting.
- No flag/boolean parameters — split into separate functions.
- Past two arguments, use a destructured options object.
- Don't mutate inputs — return new values.
- Prefer `switch` with an `assertNever(x)` default for exhaustiveness over if/else chains or lookup objects. Also fine: `switch (true)` for guarded branches, and IIFEs for inline scoped expressions.
- For static module-level constants, prefer `const FOO = {...} as const satisfies T` over `const FOO: T = {...}` — gives literal narrowing, deep readonly, and shape validation in one form.
