# Obsidian LaTeX Suite Snippets

This README documents all available keymaps and snippets for the Obsidian LaTeX Suite plugin as configured in `obsidian_later_suite_snippets.js`.

## Recent Additions (from Video Transcript & Custom Requests)

| Trigger | Replacement | Mode | Description |
| --- | --- | --- | --- |
| `mk` | `$ $0 $ $1` | Text (Auto) | Enter inline math mode. Press **Tab** to jump out. |
| `K` | `$$\n\\begin{align}\n$0\n\\end{align}\n$$$1` | Text (Auto, Word) | Enter an align block. Press **Tab** to jump out. |
| `CK` | `` `$0`$1 `` | Text (Word) | Insert backticks for code/text |
| `sum` | `\sum_{$0}^{$1}` | Math (Auto) | Summation with lower and upper bounds |

---

## Keymaps Reference

### Math Mode Entry
| Trigger | Replacement | Options |
| --- | --- | --- |
| `mk` | `$ $0 $ $1` | Text (Auto) |
| `K` | `align block` | Text (Auto, Word) |
| `dm` | `$$ \n $0 \n $$` | Text (Auto, Word) |
| `beg` | `\begin{$0} \n $1 \n \end{$0}` | Math (Auto) |

### Text Environment
| Trigger | Replacement | Options |
| --- | --- | --- |
| `CK` | `` `$0`$1 `` | Text (Word) |
| `text` | `\text{$0}` | Math (Auto) |
| `"` | `\text{$0}` | Math (Auto) |

### Greek Letters (Math Mode)
Use `@` or `:` prefix followed by a letter.
- `@a` -> `\alpha`, `@b` -> `\beta`, `@g` -> `\gamma`, `@G` -> `\Gamma`
- `@d` -> `\delta`, `@D` -> `\Delta`, `@e` -> `\epsilon`, `:e` -> `\varepsilon`
- `@z` -> `\zeta`, `@t` -> `\theta`, `@T` -> `\Theta`, `:t` -> `\vartheta`
- `@i` -> `\iota`, `@k` -> `\kappa`, `@l` -> `\lambda`, `@L` -> `\Lambda`
- `@s` -> `\sigma`, `@S` -> `\Sigma`, `@u` -> `\upsilon`, `@U` -> `\Upsilon`
- `@o` -> `\omega`, `@O` -> `\Omega`
- `ome` -> `\omega`, `Ome` -> `\Omega`

### Basic Operations
| Trigger | Replacement | Options |
| --- | --- | --- |
| `sr` | `^{2}` | Math (Auto) |
| `cb` | `^{3}` | Math (Auto) |
| `rd` | `^{$0}` | Math (Auto) |
| `_` | `_{$0}` | Math (Auto) |
| `sq` | `\sqrt{$0}` | Math (Auto) |
| `//` | `\frac{$0}{$1}` | Math (Auto) |
| `ee` | `e^{$0}` | Math (Auto) |
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
| `lim` | `\lim_{n \to \infty}` | Math (Auto) |
| `+-` | `\pm` | Math (Auto) |
| `!=` | `\neq` | Math (Auto) |
| `->` | `\to` | Math (Auto) |
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
- `avg` -> `\langle \dots \rangle`
- `norm` -> `\lvert \dots \rvert`
- `Norm` -> `\lVert \dots \rVert`
- `mod` -> `| |`
- `lr(` -> `\left( \dots \right)`

---

## Tips & Others (from Video)

- **Jump Out:** For most new snippets, press **Tab** to jump out of the math or bracket environment.
- **Templates:** Use the Obsidian Templates plugin to create a "Math Template" with Idea and Formal sections.
- **Images:** Use `math.io` for drawing functions and export as SVG.
- **OCR:** Use "Simple Text" AI tool to extract LaTeX from screenshots of formulas.
- **Dark Mode Images:** Use a CSS snippet to enable an "invert B" style for images. To invert an image color in dark mode, you might need to add a specific class or use a snippet that responds to `invert B`.
- **Canvas:** Organize atomic math notes in Obsidian Canvas to connect ideas.
