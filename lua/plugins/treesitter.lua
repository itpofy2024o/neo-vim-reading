-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
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
      "python",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
