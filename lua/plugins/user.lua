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
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Spectre",
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    ft = { "markdown", "codecompanion" },
    opts = {
      -- Neovim 0.12's Treesitter query API is currently incompatible with
      -- render-markdown's injection queries; keep the plugin available but
      -- prevent its asynchronous renderer from crashing Markdown buffers.
      enabled = false,
      file_types = { "markdown", "codecompanion" },
    },
  },
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex", "bib" },
    init = function()
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_quickfix_mode = 0
    end,
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
