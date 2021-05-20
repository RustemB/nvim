vim.api.nvim_set_keymap('n', '<S-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Down>', '<ESC>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Up>', '<ESC>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Down>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Up>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { silent = true })
