-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- Neovim 0.12 currently crashes in the Treesitter highlighter when a
    -- parser query returns a node without `range()`. Disable the highlighter
    -- until the upstream parser/query compatibility is fixed; Vim syntax
    -- highlighting and all LSP features continue to work.
    highlight = {
      enable = false,
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
