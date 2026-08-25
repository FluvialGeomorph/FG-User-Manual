# Project plan

## Purpose

Maintain and publish the FluvialGeomorph User Manual as an HTML-first Quarto
book while supporting an occasional basic PDF for offline distribution.

## Current priorities

1. Preserve the existing GitHub Pages publication from `docs/`.
2. Keep PDF generation explicit and opt-in.
3. Keep shared content readable in both formats without requiring polished
   print-specific design.
4. Maintain durable repository context using the `{reproducibleai}`
   agentic-context standard.

## Success criteria

- `quarto render --to html` completes and produces the HTML book.
- `quarto render --to pdf --output-dir _pdf` completes and produces one
  readable book PDF.
- HTML-only enhancements have a readable non-HTML fallback or are omitted
  without losing essential guidance.
- The agentic-context scaffold validates without structural errors.
