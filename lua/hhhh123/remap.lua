-- file
vim.keymap.set('n', '<leader>q', vim.cmd.q)
vim.keymap.set('n', '<leader>w', vim.cmd.w)

-- plugins
vim.keymap.set('n', '<leader>pi', vim.cmd.Lazy)
vim.keymap.set('n', '<leader>pm', vim.cmd.Mason)

-- theprimeagen
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- LSP zero
-- <F2> : Renames
-- <F3> : Format
-- <F4> : Code Action
-- vim.keymap.set('n', '<leader>lf', vim.cmd.LspZeroFormat)

-- defaults
vim.keymap.set('n', '<leader>c', '<C-w>c')
