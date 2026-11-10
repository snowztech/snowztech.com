# Snowztech brand resources

## Files

The two screenshots under `references/` are local reference material, ignored by Git. Logo assets and these notes are included in the repository.

- `logos/snowztech-mark-refined.png`: full-resolution refined logo concept, white on black. Generated with ImageGen from the original mark on 10 November 2026.
- `references/original-github-profile.png`: the supplied screenshot showing the original snowflake and diagonal mark.
- `references/identity-mockup.png`: the supplied identity layout reference. Its geometric snowflake is an alternative reference, not the selected direction.
- `refinement-brief.md`: the design direction used for the refinement.

## Production logo and sharing assets

- `logos/snowztech-mark.svg`: transparent light SVG master for dark backgrounds.
- `logos/snowztech-mark-dark.svg`: transparent dark SVG master for light backgrounds.
- `logos/snowztech-avatar.png`: 512 × 512 avatar on a dark background.
- `social/social-card.svg`: editable 1200 × 630 sharing card; PNG output is at `assets/brand/social-card.png`.
- `assets/brand/` in the site root contains the web SVG, SVG favicon, 16/32/48px PNG favicons, and 180px Apple touch icon.

The vector mark is a geometric reconstruction of the selected snowflake and diagonal motif. Four-unit strokes, rounded endpoints, and a transparent separation around the diagonal make it scalable. It is a website brand asset; the separate UI library’s canonical mark has not been changed.

Keep the aspect ratio and the clear space in the SVG viewBox. Use the light mark on dark backgrounds and the dark mark on light backgrounds. Do not stretch it or add shadows and gradients. The earlier generated PNG remains archived as a concept.

## Website visual direction

Use restrained typography, spacing, and concise descriptions to express the visual character. Describe what the software does rather than calling it calm or minimal.

Visual tokens come from `@snowztech/ui-css` 0.6.0, vendored under `assets/vendor/snowztech-ui/`.

- Background: `--sn-bg` (`#0a0a0a` in dark mode)
- Primary text: `--sn-fg` (`#e8e8e8`)
- Secondary text: `--sn-fg-muted` (`#888888`)
- Dividers: `--sn-border-strong` (`#2a2a2a`)
- Interaction accent: `--sn-accent` (`#8ab4f8`)
- Typography: `--sn-font-mono` (JetBrains Mono when available, then local monospace fallbacks)
- Spacing: the library's `--sn-s-*` scale, with page-specific composition where needed
- Organization description: “An independent software lab building open-source developer tools.”

## Source and published assets

`resources/` is a source reference folder. Ink does not copy it into the published site. Place only assets intended for visitors in `assets/` (served under `/assets/`) or `static/` (served from the root). Keep full reference screenshots here.
