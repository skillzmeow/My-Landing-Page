# nika00.com — Project Overview

## Purpose
Static single-page website for music producer NIKA00 (Ukraine, Kyiv).
Features: social links, product showcase, embedded beat player with playlist.

## Tech Stack
- Single HTML file: `index.html` (~1300 lines)
- Pure HTML/CSS/JS — no build system, no npm, no bundler
- Google Fonts (Outfit)
- Background video: `42197-429661458.mp4`
- Audio: 34 MP3 files in `beats/` folder

## File Structure
```
index.html          — entire website (CSS + HTML + JS)
beats/              — 34 MP3 beat files (filenames have spaces)
42197-429661458.mp4 — background video
reference.txt       — design reference (not deployed)
CLAUDE.md           — AI assistant instructions
.mcp.json           — Serena MCP config
```

## Deployment
Upload files to web host. No build step.

## index.html Section Map (use offset+limit for reads)
| Section | Lines |
|---------|-------|
| CSS variables & reset | 1–50 |
| Glass panel + card CSS | 51–100 |
| Link buttons CSS | 101–215 |
| Products section CSS | 216–300 |
| Main layout CSS | 301–343 |
| Touch/mobile media query | 344–400 |
| Player CSS | 401–730 |
| HTML body | 731–862 |
| JS — tilt + player init | 863–1000 |
| JS — player logic | 1000–1300 |
