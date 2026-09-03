-- VS Code-style UI additions. AstroNvim already provides the explorer, search,
-- terminal, LSP, completion, Git signs, and diagnostics used below.
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = { hide_dotfiles = false, hide_gitignored = false },
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      window = { width = 34 },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      direction = "horizontal",
      size = 15,
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = { prompt_position = "top", width = 0.92, height = 0.85 },
      },
    },
  },
  {
    "stevearc/aerial.nvim",
    opts = {
      -- Neovim 0.12 currently breaks Aerial's Treesitter backend in some buffers.
      -- Keep the outline feature, but avoid the startup callback crash.
      backends = { "lsp" },
      open_automatic = false,
    },
  },
  {
    "nvimtools/none-ls.nvim",
    enabled = false,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    enabled = false,
  },
}
