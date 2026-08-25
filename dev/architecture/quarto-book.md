# Quarto book architecture

## System boundary

This repository owns the User Manual source, local Quarto extensions, rendered
GitHub Pages output, and render instructions.

## Source and output structure

- `_quarto.yml` defines the book, chapter order, and primary HTML format.
- Root `*.qmd` files are the maintained chapter sources.
- `_extensions/` contains repository-local shortcodes used by the chapters.
- `images/` and `figures/` contain source media.
- `docs/` is tracked publication output for GitHub Pages.
- `_pdf/` is ignored, disposable output for explicit PDF renders.

## Format ownership

HTML is the configured and published format. PDF is selected from the command
line with `--to pdf`; it is not added to the project format list, so an ordinary
HTML publication does not implicitly create a PDF.

Document front matter must not lock chapters to HTML. Format-specific content
uses Quarto conditional content, and repository-local shortcodes must return a
readable fallback for non-HTML formats.

## External dependencies

- Quarto and its bundled Pandoc render both formats.
- A LaTeX distribution is required only for PDF rendering.
- GitHub Pages serves the committed `docs/` directory; `_pdf/` is not published.
