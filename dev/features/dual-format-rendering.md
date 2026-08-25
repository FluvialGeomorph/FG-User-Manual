# HTML-primary and opt-in PDF rendering

## User outcome

Maintainers can continue publishing the HTML book to GitHub Pages and can
periodically create a readable, quick-turnaround PDF without changing the
primary publication workflow.

## Behavioral contract

- HTML remains the only format configured in `_quarto.yml`.
- HTML renders write to `docs/`.
- PDF renders require the explicit `--to pdf` option and write to `_pdf/`.
- `_pdf/` is ignored by Git.
- A PDF render may use default Quarto styling; print-specific elegance is not a
  current requirement.
- Essential guidance must remain readable in PDF. Decorative HTML-only content
  may use a simpler conditional fallback.
- Mermaid diagrams remain interactive in HTML and use concise text or table
  fallbacks in PDF to avoid a headless-browser dependency during print builds.
- Badges render as styled spans in HTML and bracketed text in non-HTML formats.

## Acceptance evidence

1. Render HTML into a temporary verification directory and confirm the book
   landing page and representative chapters exist.
2. Render PDF into `_pdf/`.
3. Inspect PDF metadata and extracted text.
4. Render representative PDF pages to images and check for clipping,
   overlap, missing essential content, or unreadable figures.
