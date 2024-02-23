local configs = require('nvim-treesitter.configs')

configs.setup({
  autotag          = { enable = true },
  ensure_installed = { 'c', 'lua', 'org', 'sql', 'markdown' },
  sync_install     = false,
  highlight        = { enable = true },
  indent           = { enable = true },
})
