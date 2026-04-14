# Code Style & Conventions

## CSS
- CSS custom properties in `:root` (e.g. `--glass-bg`, `--text-main`, `--accent`)
- BEM-ish class naming: `.glass-panel`, `.lnk`, `.tg-split`, `.tg-half`, `.p-btn`
- IDs for unique elements: `#card`, `#player`, `#player-bar`, `#playlist-panel`
- Mobile-first breakpoints: `@media (max-width:480px)` and `@media (hover:none) and (pointer:coarse)`

## JavaScript
- Vanilla JS, no frameworks
- `const`/`let`, arrow functions
- DOM refs cached at top of player section
- `requestAnimationFrame` for progress bar (not setInterval)
- Lazy audio metadata loading in batches of 4

## Performance Rules
- No `backdrop-filter` on `.lnk`, `.tg-split`, `.prod-item` (perf cost)
- Shimmer animations use `transform: translateX()` not `left`
- `will-change: transform` only on card and shimmer elements
- Touch: all transforms/animations disabled via `@media (hover:none)`

## iOS Safari Gotchas
- `overflow:hidden` + `border-radius` clips SVG icons → use `overflow:visible` on `.lnk`
- Audio: call `audio.load()` before `audio.play()` on every track change
- File URLs must use `encodeURIComponent()` (spaces in filenames)
- Background video: do NOT hide `#bg-video` in touch media query

## Mobile Layout
- Desktop: `#main-layout` is `position:fixed`, centered with flexbox
- Mobile (`max-width:480px`): `position:relative`, `min-height:100dvh`, scrollable
