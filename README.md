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

The generated website is in `public/`. It can be served by any static host. Build output is ignored by Git. No hosting account or deployment is configured.

## Edit

- `pages/index/content.html`: homepage copy and project directory.
- `themes/snowztech/layout.html`: shared page structure, navigation, metadata, and footer.
- `themes/snowztech/styles.css`: page composition and responsive styles, using Snowztech UI tokens.
- `ink.yaml`: site title and description.
- `assets/mark.png`: the refined logo concept generated for this site. Replace with a finished vector mark when available.

Project descriptions and links are intentionally maintained by hand; there are no live counters or third-party requests. The GitHub repository is `snowztech/snowztech.com`; this checkout lives at `~/dev/snowztech`.

## Brand resources

Logo files, original reference screenshots, and visual guidelines are in `resources/brand/`. Start with `resources/brand/README.md`. This folder is kept out of the generated website; `assets/mark.png` is the copy used by the page.

## Design system

The site loads an unmodified local copy of `@snowztech/ui-css` 0.6.0 before its layout stylesheet. Tokens control color, font families, type scale, spacing, focus colors, and corner radii. The shared `sn-wordmark`, `sn-meta`, and `sn-btn` classes provide the wordmark, labels, and text actions.

The original hero, project rows, section order, and responsive grid remain site-specific. Display headings use a larger responsive scale for the landing page. Secondary labels use `--sn-fg-muted` for readability. The font stack is the library's monospace stack; JetBrains Mono is used when installed, with local monospace fallbacks otherwise.

See `assets/vendor/snowztech-ui/README.md` for the pinned source and update instructions. No CDN is required. The logo concept remains unchanged.

## Repository assets

Prepared logo files and brand notes are tracked. Original browser screenshots in `resources/brand/references/` stay local and are ignored by Git. They are also excluded from Ink’s build.
