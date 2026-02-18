# Neovim Keymaps

## Core Keymaps

**Leader Key:** `<Space>`

### Clipboard
- `<Space>y`: Yank to clipboard (normal and visual mode)
- `<Space>cp`: Copy path of current attached buffer to clipboard

### Window Management
- `<Space>sv`: Split window vertically
- `<Space>sh`: Split window horizontally
- `<Space>se`: Make splits equal size
- `<Space>sx`: Close current split

### Tab Management
- `<Space>to`: Open new tab
- `<Space>tx`: Close current tab
- `<Space>tn`: Go to next tab
- `<Space>tp`: Go to previous tab
- `<Space>tf`: Open current buffer in new tab

### Navigation & Editing
- `gg`: Go to first line
- `G`: Go to last line
- `0`: Go to start of line
- `$`: Go to end of line
- `A`: Append to end of line (Insert mode)
- `GA`: Append to end of file
- `dd`: Delete current line
- `dG`: Delete from cursor to end of file (Use `gg` then `dG` for "Select All + Delete")
- `:e %:h/filename`: Create a new file in the current file's directory

### Terminal
- `<Space>tt`: Open terminal in current file's directory

## Visual Mode
- `viw`: Select inner word (word cursor is currently over)

## Normal Mode Actions
- `caw`: Change a word (changes word + trailing space)
- `cit`: Change inside HTML tags
- `C`: Change from cursor to end of line

## Plugin Keymaps

### Auto Session
- `<Space>wr`: Restore session for current working directory
- `<Space>ws`: Save session for auto session root directory

### Formatting (Conform)
- `<Space>mp`: Format file or range (in visual mode)

### Git (LazyGit)
- `<Space>lg`: Open lazy git

### Linting (Nvim-lint)
- `<Space>l`: Trigger linting for current file

### LSP (Language Server Protocol)
- `gR`: Show LSP references
- `gD`: Go to declaration
- `gd`: Show LSP definitions
- `gi`: Show LSP implementations
- `gt`: Show LSP type definitions
- `<Space>ca`: See available code actions
- `<Space>rn`: Smart rename
- `<Space>D`: Show buffer diagnostics
- `<Space>d`: Show line diagnostics
- `[d`: Go to previous diagnostic
- `]d`: Go to next diagnostic
- `K`: Show documentation for what is under cursor
- `<Space>rs`: Restart LSP

### Markdown & Preview
- `:MarkdownPreview`: Open live preview in web browser
- `:MarkdownPreviewStop`: Close browser preview
- `:RenderMarkdown toggle`: Toggle in-buffer markdown rendering

### Nvim Tree (File Explorer)
- `<Space>ee`: Toggle file explorer
- `<Space>ef`: Toggle file explorer on current file
- `<Space>ec`: Collapse file explorer
- `<Space>er`: Refresh file explorer
- `a`: Add file at current directory
- `a/`: Add a subdirectory (type name with trailing slash)
- `d`: Delete file/directory cursor is over
- `r`: Rename file
- `x`: Cut file (prepare to move)
- `p`: Paste file (into selected directory)
- `t`: Open file in new tab

### R (RStudio Features)
- `\rf`: Start/Connect to R Console
- `Enter`: Run current line / selection in R
- `<Space>rc`: Run entire code chunk (Rmd only)
- `<Space>rl`: Run current line in R explicitly
- `\rv`: View R active objects
- `\rq`: Quit R

### Substitute
- `s`: Substitute with motion
- `ss`: Substitute line
- `S`: Substitute to end of line
- `s` (Visual Mode): Substitute in visual mode

### Surround
- `ys{motion}{char}`: Add surround (e.g., `ysiw"` surrounds word with quotes)
- `ds{char}`: Delete surround (e.g., `ds"` deletes surrounding quotes)
- `cs{target}{replacement}`: Change surround (e.g., `cs"'` changes surrounding quotes to single quotes)

### Telescope (Fuzzy Finder)
- `<Space>ff`: Fuzzy find files in cwd
- `<Space>fr`: Fuzzy find recent files
- `<Space>fs`: Find string in cwd (live grep)
- `<Space>fc`: Find string under cursor in cwd
- `<Space>ft`: Find todos
- `<Space>fb`: Find in buffer (current_buffer_fuzzy_find)

### Todo Comments
- `]t`: Next todo comment
- `[t`: Previous todo comment

### Trouble (Diagnostics & Lists)
- `<Space>xw`: Open trouble workspace diagnostics
- `<Space>xd`: Open trouble document diagnostics
- `<Space>xq`: Open trouble quickfix list
- `<Space>xl`: Open trouble location list
- `<Space>xt`: Open todos in trouble

### Comment
- `gc`: Toggle comment (Visual Mode)
- `gcc`: Toggle comment (Normal Mode - current line)

# Tmux Configuration Reference

**Prefix Key:** `Ctrl + Space`

| Category | Keybinding | Action |
| :--- | :--- | :--- |
| **Custom Splits** | `Prefix + |` | Split pane horizontally |
| | `Prefix + -` | Split pane vertically |
| **Resizing** | `Prefix + j` | Resize pane down (5 cells) |
| | `Prefix + k` | Resize pane up (5 cells) |
| | `Prefix + l` | Resize pane right (5 cells) |
| | `Prefix + h` | Resize pane left (5 cells) |
| | `Prefix + m` | Toggle pane zoom (maximize/restore) |
| **Navigation** | `Ctrl + h` | Move to left pane |
| | `Ctrl + j` | Move to bottom pane |
| | `Ctrl + k` | Move to top pane |
| | `Ctrl + l` | Move to right pane |
| **Windows** | `Prefix + c` | Create new window |
| | `Prefix + n` | Next window |
| | `Prefix + p` | Previous window |
| | `Prefix + w` | List windows |
| | `Prefix + ,` | Rename window |
| **Sessions** | `Prefix + Ctrl + s` | Save session (Resurrect) |
| | `Prefix + Ctrl + r` | Restore session (Resurrect) |
| **System** | `Prefix + r` | Reload tmux configuration |

**Settings:**
- Mouse mode: enabled
- Theme: cyan powerline
- Continuum: automatic restore enabled
