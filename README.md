# Lydia Janssen — Artist Website

Static HTML/CSS/JS website for [lydiajanssen.com](https://lydiajanssen.com).

## Deploy to Cloudflare Pages (recommended)

1. **Push this repository to GitHub**
   - Create a new repo at [github.com/new](https://github.com/new)
   - Name it `lydiajanssen.com` (private or public, your choice)
   - Follow the instructions GitHub shows to push an existing repo

2. **Connect to Cloudflare Pages**
   - Log in to [dash.cloudflare.com](https://dash.cloudflare.com)
   - Go to **Workers & Pages → Create → Pages → Connect to Git**
   - Select your GitHub account and choose the `lydiajanssen.com` repo
   - Build settings:
     - **Framework preset**: None
     - **Build command**: *(leave blank)*
     - **Build output directory**: `/` (root)
   - Click **Save and Deploy**

3. **Connect your custom domain**
   - In Cloudflare Pages → your project → **Custom domains**
   - Add `lydiajanssen.com` and `www.lydiajanssen.com`
   - Cloudflare will handle DNS and SSL automatically if your domain is already on Cloudflare
   - If your domain is elsewhere, update your nameservers to Cloudflare's (shown in the dashboard)

That's it — every push to `main` will auto-deploy.

---

## Deploy to Vercel (alternative)

1. Push to GitHub as above
2. Go to [vercel.com/new](https://vercel.com/new) and import the repo
3. Framework: **Other**; leave build command and output dir blank
4. Click **Deploy**, then add your custom domain under **Settings → Domains**

---

## Project structure

```
/
├── index.html          Homepage (Ken Burns slideshow)
├── works.html          Paintings by year
├── about.html          Artist statement & bio
├── press.html          Press & media
├── cv.html             Curriculum vitae
├── contact.html        Contact
├── style.css           Global styles
├── favicon.svg         Favicon (SVG)
├── favicon.png         Favicon (PNG fallback)
├── sitemap.xml         Sitemap for search engines
├── robots.txt          Search engine instructions
├── images/
│   ├── situ/           Exhibition / in-situ photographs
│   ├── artist-photo/   Artist portrait photos
│   ├── press/          Press imagery
│   └── 20XX/           Paintings by year
```

## Making changes

All pages are plain HTML — open any `.html` file in a text editor to edit.
Styles live in `style.css`. Images go in the appropriate `images/` subfolder.

After editing, commit and push to GitHub — Cloudflare Pages deploys automatically.
