# Obsidian LaTeX Suite Snippets

This README documents all available keymaps and snippets for the Obsidian LaTeX Suite plugin as configured in `obsidian_later_suite_snippets.js`.

## Recent Additions (from Video Transcript)

| Trigger | Replacement | Mode | Description |
| --- | --- | --- | --- |
| `K` | `$$0$` | Text (Auto, Word) | Enter inline math mode |
| `CK` | `` `$0`$1 `` | Text (Word) | Insert backticks for code/text |
| `sum` | `\sum_{$0}^{$1}` | Math (Auto) | Summation with lower and upper bounds |

---

## Keymaps Reference

### Math Mode Entry
| Trigger | Replacement | Options |
| --- | --- | --- |
| `mk` | `$ $` | Text (Auto) |
| `K` | `$ $` | Text (Auto, Word) |
| `dm` | `$$ 
 
 $$` | Text (Auto, Word) |
| `beg` | `\begin{} 
 
 \end{}` | Math (Auto) |

### Text Environment
| Trigger | Replacement | Options |
| --- | --- | --- |
| `CK` | `` `$0`$1 `` | Text (Word) |
| `text` | `	ext{}` | Math (Auto) |
| `"` | `	ext{}` | Math (Auto) |

### Greek Letters (Math Mode)
Use `@` or `:` prefix followed by a letter.
- `@a` -> `\alpha`, `@b` -> `\beta`, `@g` -> `\gamma`, `@G` -> `\Gamma`
- `@d` -> `\delta`, `@D` -> `\Delta`, `@e` -> `\epsilon`, `:e` -> `\varepsilon`
- `@z` -> `\zeta`, `@t` -> `	heta`, `@T` -> `\Theta`, `:t` -> `\vartheta`
- `@i` -> `\iota`, `@k` -> `\kappa`, `@l` -> `\lambda`, `@L` -> `\Lambda`
- `@s` -> `\sigma`, `@S` -> `\Sigma`, `@u` -> `\upsilon`, `@U` -> `\Upsilon`
- `@o` -> `\omega`, `@O` -> `\Omega`
- `ome` -> `\omega`, `Ome` -> `\Omega`

### Basic Operations
| Trigger | Replacement | Options |
| --- | --- | --- |
| `sr` | `^{2}` | Math (Auto) |
| `cb` | `^{3}` | Math (Auto) |
| `rd` | `^{}` | Math (Auto) |
| `_` | `_{}` | Math (Auto) |
| `sq` | `\sqrt{}` | Math (Auto) |
| `//` | `\frac{}{}` | Math (Auto) |
| `ee` | `e^{}` | Math (Auto) |
| `invs` | `^{-1}` | Math (Auto) |
| `conj` | `^{*}` | Math (Auto) |

### Linear Algebra
| Trigger | Replacement | Options |
| --- | --- | --- |
| `det` | `\det` | Math (Auto) |
| `trace` | `\mathrm{Tr}` | Math (Auto) |

### Symbols
| Trigger | Replacement | Options |
| --- | --- | --- |
| `ooo` | `\infty` | Math (Auto) |
| `sum` | `\sum_{$0}^{$1}` | Math (Auto) |
| `prod` | `\prod` | Math (Auto) |
| `lim` | `\lim_{n 	o \infty}` | Math (Auto) |
| `+-` | `\pm` | Math (Auto) |
| `!=` | `
eq` | Math (Auto) |
| `->` | `	o` | Math (Auto) |
| `=>` | `\implies` | Math (Auto) |
| `RR` | `\mathbb{R}` | Math (Auto) |
| `ZZ` | `\mathbb{Z}` | Math (Auto) |
| `NN` | `\mathbb{N}` | Math (Auto) |

### Environments
| Trigger | Replacement |
| --- | --- |
| `pmat` | `pmatrix` |
| `bmat` | `bmatrix` |
| `cases` | `cases` |
| `align` | `align` |

### Brackets
- `avg` -> `\langle angle`
- `norm` -> `\lvert vert`
- `Norm` -> `\lVert Vert`
- `mod` -> `| |`
- `lr(` -> `\left( ight)`

---

## Tips & Others (from Video)

- **Templates:** Use the Obsidian Templates plugin to create a "Math Template" with Idea and Formal sections.
- **Images:** Use `math.io` for drawing functions and export as SVG.
- **OCR:** Use "Simple Text" AI tool to extract LaTeX from screenshots of formulas.
- **Dark Mode Images:** Use a CSS snippet to enable an "invert B" style for images. To invert an image color in dark mode, you might need to add a specific class or use a snippet that responds to `invert B`.
- **Canvas:** Organize atomic math notes in Obsidian Canvas to connect ideas.
