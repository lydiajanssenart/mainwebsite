# Lydia Janssen — Website Project

## Who I am
- Artist based in Singapore. Website: lydiajanssen.com
- Email: lydia@lydiajanssen.com
- The site is my portfolio — paintings, works on paper, sketches, press coverage.

## Site structure
- Static HTML/CSS/JS — no framework, no build step
- Hosted on Netlify (free tier — 100GB bandwidth/month; watch usage)
- GitHub repo: `lydiajanssenart/mainwebsite`, branch `master`
- Main pages: `index.html`, `works.html`, `press.html`, `about.html`, `contact.html`
- Images live in `images/` (full size) and `images/thumbs/` (thumbnails), organised by year

## How to push to GitHub
**Cannot push from the sandbox** (SSH to github.com is blocked in Claude's environment).
Always push by double-clicking `push_to_github.command` in Finder.
- Navigate in Finder: Desktop → lydiajanssen.com → double-click `push_to_github.command`
- Or use Cmd+Shift+G in Finder and paste the path
- The script uses the SSH deploy key at `~/Desktop/lydiajanssen.com/deploy_key`

## Files NEVER to commit to git
These must stay out of git — personal/sensitive files in the folder:
- `birthday_guestlist.xlsx`
- `Lydia 50th Invite` (all versions)
- `Lydia 50th/` folder
- `Sovereign Art Prize 2026/` folder
- `push_to_github.command` (contains credentials reference)
- `deploy_key` (SSH private key)
- Any `*.HEIC` files dropped in the root for conversion

## Images
- Compress new JPEGs to max 1800px long side, quality 82 before committing
- Python/PIL compression script was run in July 2026 — reduced images from 173MB to 51MB
- HEIC conversion: macOS sandbox can't handle HEIC. Use `convert_heic.command` (sips with `-Z` flag) on the Mac directly, then commit the resulting JPEGs
- TIF master files are NOT in git — only JPGs are tracked

## CSS / mobile layout notes
- Works page uses CSS Grid: 3-col desktop → 1-col mobile at ≤600px
- `@media (max-width: 600px)` block uses `!important` to override inline `grid-column` styles on work items
- `.sketches-grid` class handles sketch/study year sections — thumbnails display at 50% width on mobile (so they appear proportionally smaller than large paintings)
- Large paintings should fill the screen on mobile; sketches/small works should appear at half width

## Preferences
- Keep commits clean and descriptive
- Don't commit helper scripts or personal files
- Check Netlify bandwidth if doing large image pushes
