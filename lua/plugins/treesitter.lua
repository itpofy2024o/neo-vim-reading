-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- The Markdown parser's injection/highlight queries currently trigger a
    -- Neovim 0.12 `node:range()` callback error. Keep Treesitter highlighting
    -- for code while using Vim's stable syntax highlighting for Markdown.
    highlight = {
      disable = { "markdown", "markdown_inline" },
    },
    ensure_installed = {
      "vim",
      "vimdoc",
      "lua",
      "bash",
      "json",
      "yaml",
      "toml",
      "markdown",
      "markdown_inline",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "jsdoc",
      "python",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "rust",
      "php",
      "phpdoc",
      "perl",
      "sql",
      "regex",
      "query",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
