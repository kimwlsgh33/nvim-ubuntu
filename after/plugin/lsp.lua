local lsp_zero = require('lsp-zero')

-- bufnr : the number of a buffer (nr == number in Dutch)
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- ot learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- global manual settings
-- require('lspconfig').clangd.setup{}

-- local setting
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = { 'lua_ls', 'clangd' },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

-- default lua options

-- custom lua options
-- local lua_opts = lsp_zero.nvim_lua_ls({
--   single_file_support = false,
--   on_attach = function(client, bufnr)
--     print('hello world')
--   end,
-- })
--
-- require('lspconfig').lua_ls.setup(lua_opts)


--
-- Autocompletion config
--
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})
