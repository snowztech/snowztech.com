# snowztech

The Snowztech website, built with [inkssg](https://github.com/snowztech/inkssg). Plain HTML, Snowztech UI CSS, and a custom Ink layout. No client-side JavaScript, build-time Node dependency, or external font requests.

## Run locally

Install Ink if needed (Go 1.24.6 or newer):

```sh
go install github.com/snowztech/inkssg/cmd/inkssg@latest
```

Then, from this directory:

```sh
make dev
```

Open http://127.0.0.1:4321. Ink watches the source and reloads the page when files change.

## Build

```sh
make build
```

The generated website is in `public/`. It can be served by any static host. Build output is ignored by Git. GitHub Pages publishes this directory through the workflow below.

## Edit

- `pages/index/content.html`: homepage copy and project directory.
- `themes/snowztech/layout.html`: shared page structure, navigation, metadata, and footer.
- `themes/snowztech/styles.css`: page composition and responsive styles, using Snowztech UI tokens.
- `ink.yaml`: site title and description.
- `assets/brand/`: production SVG mark, favicon exports, Apple touch icon, and social sharing card.
- `assets/images/farol-split.png`: the unmodified product screenshot.
- `resources/brand/logos/` and `resources/brand/social/`: editable vector masters and avatar exports.

Project descriptions and links are intentionally maintained by hand; there are no live counters or third-party requests. The GitHub repository is `snowztech/snowztech.com`; this checkout lives at `~/dev/snowztech`.

## Brand resources

Logo files, original reference screenshots, and visual guidelines are in `resources/brand/`. Start with `resources/brand/README.md`. This folder is kept out of the generated website; `assets/brand/mark.svg` is the vector used by the page.

## Design system

The site loads an unmodified local copy of `@snowztech/ui-css` 0.6.0 before its layout stylesheet. Tokens control color, font families, type scale, spacing, focus colors, and corner radii. The shared `sn-wordmark`, `sn-meta`, and `sn-btn` classes provide the wordmark, labels, and text actions.

The original hero, project rows, section order, and responsive grid remain site-specific. Display headings use a larger responsive scale for the landing page. Secondary labels use `--sn-fg-muted` for readability. The font stack is the library's monospace stack; JetBrains Mono is used when installed, with local monospace fallbacks otherwise.

See `assets/vendor/snowztech-ui/README.md` for the pinned source and update instructions. No CDN is required. The SVG mark preserves the snowflake and diagonal motif of the earlier raster concept.

## Repository assets

Prepared logo files and brand notes are tracked. Original browser screenshots in `resources/brand/references/` stay local and are ignored by Git. They are also excluded from Ink’s build.

## Deployment

Pushes to `main` run `.github/workflows/pages.yml`: install Ink v0.3.1, build the site, upload only `public/`, and deploy to GitHub Pages. The workflow can also be run manually from GitHub Actions.

The repository’s Pages source is GitHub Actions and its custom domain is `snowztech.com`. DNS and the Pages HTTPS certificate are configured separately from this build. `vercel.json` disables automatic Vercel Git deployments; it is not a Vercel build configuration. To remove the Vercel integration entirely, disconnect this repository in the existing Vercel project's Git settings.

## Sharing and product imagery

The layout includes canonical, Open Graph, and Twitter card metadata for `https://snowztech.com/`. The social card is a 1200 × 630 PNG; its editable SVG source is `resources/brand/social/social-card.svg`. Update the absolute URLs when changing the production domain.

The Farol screenshot is copied unchanged from the product’s screenshot library. It depicts the documented shelf demo rather than a customer workspace. It is lazy-loaded with explicit dimensions and opens at full resolution when clicked. See `resources/brand/ASSETS.md` for provenance.
