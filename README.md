# phildiamondmusic.com

This folder is the whole website. The site is the single file `index.html`.

## How to update the site

1. Your designer sends you a new `index.html`.
2. Drag it into this folder (`phildiamondmusic` in your home folder), replacing the old one.
3. Open Claude Code in this folder and say **deploy**.
   (Or, in Terminal: `cd ~/phildiamondmusic` then `./deploy.sh`.)

About a minute later the new version is live at https://phildiamondmusic.com.

## Good to know

- Don't edit `index.html` by hand. It's generated from the design file (`Phil Diamond.dc.html`),
  so any hand edits would be lost the next time it's exported.
- Every deploy is saved on GitHub, so an older version can always be brought back.
- Hosting is on Netlify (free). It republishes the site by itself whenever the file changes
  on GitHub. There's nothing to do there.
- Email (`info@phildiamondmusic.com`) is still handled by the old cPanel host and isn't
  affected by any of this.
