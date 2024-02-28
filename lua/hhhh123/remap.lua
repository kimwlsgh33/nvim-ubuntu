-- file
vim.keymap.set('n', '<leader>q', vim.cmd.q)
vim.keymap.set('n', '<leader>w', vim.cmd.w)


-- theprimeagen
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)


-- defaults
vim.keymap.set('n', '<leader>c', '<C-w>c')

--
-- Plugins
--
vim.keymap.set('n', '<leader>pi', vim.cmd.Lazy)
vim.keymap.set('n', '<leader>pm', vim.cmd.Mason)

--
-- Telescope
--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--
-- Autocompletion
--
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

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

-- LSP zero
-- <F2> : Renames
-- <F3> : Format
-- <F4> : Code Action
-- vim.keymap.set('n', '<leader>lf', vim.cmd.LspZeroFormat)

--
-- Harpoon
--
local harpoon = require('harpoon')
vim.keymap.set('n', '<leader>a', function ()
  harpoon:list():append()
end)
vim.keymap.set('n', '<C-e>', function ()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set('n', '<C-y>', function ()
  harpoon:list():select(1)
end)
vim.keymap.set('n', '<C-t>', function ()
  harpoon:list():select(2)
end)
vim.keymap.set('n', '<C-n>', function ()
  harpoon:list():select(3)
end)
vim.keymap.set('n', '<C-s>', function ()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function ()
  harpoon:list():prev()
end)

vim.keymap.set('n', '<C-S-N>', function ()
  harpoon:list():next()
end)

-- Toggle aerial
-- vim.keymap.set("n", "<leader>s", "<cmd>AerialToggle!<CR>")

-- Toggle Gitsigns
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>")

-- Toggle term
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>")
