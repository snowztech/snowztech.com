# Snowztech brand resources

## Files

The two screenshots under `references/` are local reference material, ignored by Git. Logo assets and these notes are included in the repository.

- `logos/snowztech-mark-refined.png`: full-resolution refined logo concept, white on black. Generated with ImageGen from the original mark on 10 November 2026.
- `references/original-github-profile.png`: the supplied screenshot showing the original snowflake and diagonal mark.
- `references/identity-mockup.png`: the supplied identity layout reference. Its geometric snowflake is an alternative reference, not the selected direction.
- `refinement-brief.md`: the design direction used for the refinement.

## Logo use

The refined PNG is the current concept. The website uses a copy at `assets/mark.png`. It has an opaque black background; it is not a transparent cutout or a vector master.

Keep the aspect ratio and clear space around the mark. Use it in monochrome. Avoid stretching, shadows, gradients, or adding detail. Check small applications at 24–32 pixels before publishing. A finished SVG and dedicated favicon exports remain future work.

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
