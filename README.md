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
| `Space t t` | Show/hide the bottom terminal (terminal-safe) |
| `Space t v` | Show/hide a side terminal |
| `Space y` | Copy a visual selection to the macOS clipboard |
| `Space p` | Paste from the macOS clipboard |

## Editing and clipboard

The system clipboard is enabled, so normal Neovim copy/delete/paste commands
work with macOS: select text with `v`, then `y` to copy, `d` or `x` to delete,
and `p` to paste. `V` selects full lines and `Ctrl-V` selects a rectangular
block. You can also select text with the mouse.

Open a project with `nvim path/to/project`. The explorer follows the current
file, and the terminal opens as a horizontal split at the bottom.
