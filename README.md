# Neovim workspace

This AstroNvim configuration is tuned for a VS Code-style workflow: a project
explorer, fuzzy search, an integrated terminal, LSP-powered code intelligence,
and an Apple Terminal-safe Retrobox colour theme.

## Everyday shortcuts

| Shortcut | Action |
| --- | --- |
| `Ctrl-P` | Find and open a file |
| `Ctrl-Shift-F` | Search text across the workspace |
| `Ctrl-Shift-P` | Command palette |
| `Ctrl-B` | Show/hide the file explorer |
| `Ctrl-\`` | Show/hide the bottom terminal |
| `Ctrl-S` | Save |
| `Space e` | Show/hide the file explorer (terminal-safe) |
| `Space f f` | Find files (AstroNvim native shortcut) |
| `Space f w` | Search workspace text (AstroNvim native shortcut) |
| `Space u c` | Change colour theme with live preview |
| `Space t t` | Show/hide the bottom terminal (terminal-safe) |
| `Space t v` | Show/hide a side terminal |
| `Space t f` | Open a floating terminal |
| `Space t 1` / `Space t 2` / `Space t 3` | Open separate reusable terminal splits |
| `Esc Esc` inside terminal | Leave terminal typing mode and return to normal Neovim navigation |
| `Space s r` | Open project-wide search and replace |
| `Space s w` | Search and replace the word under the cursor |
| Visual select, then `Space s r` | Search and replace the selected text |
| `Space m p` | Toggle rendered Markdown preview |
| `Space l c` | Compile a LaTeX document with VimTeX |
| `Space l v` | View the compiled LaTeX PDF with VimTeX |
| `Space y` | Copy a visual selection to the macOS clipboard |
| `Space p` | Paste from the macOS clipboard |

## Editing and clipboard

The system clipboard is enabled, so normal Neovim copy/delete/paste commands
work with macOS: select text with `v`, then `y` to copy, `d` or `x` to delete,
and `p` to paste. `V` selects full lines and `Ctrl-V` selects a rectangular
block. You can also select text with the mouse.

Open a project with `nvim path/to/project`. The explorer follows the current
file, and the terminal opens as a horizontal split at the bottom.

## Language and preview support

Installed language-server support now covers Lua, Bash, JSON, YAML, HTML, CSS,
JavaScript, TypeScript, React/TSX, ESLint, Tailwind CSS, Emmet, Python, Go,
Rust, PHP, Perl, and SQL.

Fast file finding uses `fd`, and fast content search uses `ripgrep`.

Markdown preview is handled inside Neovim by `render-markdown.nvim`. LaTeX
editing is handled by VimTeX. Full LaTeX PDF compilation/viewing also needs a
local TeX toolchain such as `latexmk`; the shortcuts are configured, but the
external compiler must be installed separately.
