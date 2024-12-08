require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "lua", "vim", "vimdoc", "javascript", "typescript", "python",
    "c", "cpp", "rust", "go", "html", "css", "json", "yaml",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,    -- Enable syntax highlighting
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true    -- Enable indentation
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
