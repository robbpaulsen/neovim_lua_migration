vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch<CR>', { noremap = true, silent = true })

-- NERDTree Toggle
vim.api.nvim_set_keymap('n', '<C-n>', ':set NERDTree<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':set NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':set NERDTreeFind<CR>', { noremap = true, silent = true })
-- TagbarToggle
vim.api.nvim_set_keymap('n', '<F8>', ':set TagbarToggle<CR>', { noremap = true, silent = true })
-- I hate escape key
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
