# Suggested Commands

## Viewing the site
Open `index.html` directly in a browser. No server needed (except for audio — Chrome blocks local file audio).
For local testing with audio: `npx serve .` or `python -m http.server 8080`

## Finding code
- Find CSS class: `grep -n "\.lnk" index.html`
- Find JS function: `grep -n "loadTrack" index.html`
- Find line range: use the section map in `project_overview` memory

## Editing workflow
1. Grep for the element/class to get exact line number
2. Read only that section with `offset`+`limit`
3. Edit the targeted section
4. Never read the whole file at once (16k+ tokens)

## System utils (Windows)
- Shell: bash (Git Bash / WSL)
- File listing: `ls -la`
- Search: `grep -n "pattern" file`
- No linting/formatting/testing commands — static HTML project
