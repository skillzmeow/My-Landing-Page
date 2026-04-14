# Task Completion Checklist

After any change to index.html:

1. **Mobile mental model test**: does it work on iPhone SE (375px) and 320px width?
2. **Touch media query**: did the change affect `@media (hover:none)` behaviour?
3. **iOS Safari**: any `overflow:hidden` + `border-radius` combinations on elements with SVG children?
4. **Performance**: no new `backdrop-filter` on list elements, no `left` animation (use `transform`)
5. **Audio**: any path changes? Must use `encodeURIComponent()` for filenames with spaces

No build, lint, or test commands — this is a static file.
Update CLAUDE.md `Session History` line with date and summary of changes.
