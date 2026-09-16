# phildiamondmusic.com

This folder is the whole website: `index.html` plus the `assets` folder (the photos).

## How to update the site

1. Your designer sends you a new `index.html` (and possibly a new `assets` folder).
2. Drag them into this folder (`phildiamondmusic` in your home folder), replacing the old ones.
   If there's a new `assets` folder, put it in **first**, then `index.html`.
3. That's it — the site uploads by itself and you get a "✅ Ανεβαίνει" notification.
   If you don't see one, open Claude Code and say **deploy**.

About a minute later the new version is live at https://phildiamondmusic.com.

## Good to know

- Don't edit `index.html` by hand. It's generated from the design file (`Phil Diamond.dc.html`),
  so any hand edits would be lost the next time it's exported.
- Every deploy is saved on GitHub, so an older version can always be brought back.
- Hosting is on Netlify (free). It republishes the site by itself whenever the file changes
  on GitHub. There's nothing to do there.
- Email (`info@phildiamondmusic.com`) is still handled by the old cPanel host and isn't
  affected by any of this.
