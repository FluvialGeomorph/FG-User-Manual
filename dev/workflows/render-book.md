# Render the Quarto book

## Workstation setup

Read `C:\workspace\FluvialGeomorph\.agents\workstation.md` before invoking
Quarto, Pandoc, or R. Quarto is bundled with Positron and may not be on `PATH`.
Resolve it from:

``` powershell
$quarto = Join-Path $env:LOCALAPPDATA `
  'Programs\Positron\resources\app\quarto\bin\quarto.exe'
```

PDF rendering additionally requires a LaTeX distribution. Prefer Quarto's
user-local TinyTeX installation when one is not already available.

## Publish HTML

From the repository root:

``` powershell
& $quarto render --to html
```

Review the `docs/` diff before committing generated publication output.

## Produce an opt-in PDF

From the repository root:

``` powershell
& $quarto render --to pdf --output-dir _pdf
```

Expected artifact: `_pdf/FG-User-Manual.pdf`.

## Verification

For HTML, confirm the landing page, navigation, styles, images, and a chapter
using badges or Mermaid content. For PDF, confirm page count and text
extraction, then render representative pages to PNG and visually inspect the
title, table of contents, badge fallback, Mermaid diagrams, wide tables, and
image-heavy workflow pages.

Do not commit `_pdf/` unless the publication policy is deliberately changed.
