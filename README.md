# phildiamondmusic.com

This folder is the whole website: `index.html` plus the `assets` folder (the photos).

## How to update the site

Open Claude Code and tell it what you want changed — text, photos, videos, anything —
in plain words (Greek or English). Claude edits the files here, checks them in a browser,
and uploads them. About a minute later the change is live at https://phildiamondmusic.com.

If you ever replace `index.html` yourself, the site uploads by itself when the file changes
(you'll get a "✅ Ανεβαίνει" notification). If you don't see one, say **deploy**.

## Good to know

- The design project (`Phil Diamond.dc.html`) is no longer used. `index.html` in this folder
  is now the original — edit it here, don't re-export from the design.
- Every change is saved on GitHub, so an older version can always be brought back.
- Hosting is on Netlify (free). It republishes the site by itself whenever the files change
  on GitHub.
- Email (`info@phildiamondmusic.com`) is still handled by the old cPanel host (Refresa) and
  isn't affected by the website.
- Keep photos under ~500 KB each (max ~2000 px wide) so the site loads fast on phones.
