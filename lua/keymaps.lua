local keymap = vim.api.nvim_set_keymap

keymap('n', '<S-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
keymap('n', '<S-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
keymap('i', '<S-Down>', '<ESC>:m .+1<CR>==gi', { noremap = true, silent = true })
keymap('i', '<S-Up>', '<ESC>:m .-2<CR>==gi', { noremap = true, silent = true })
keymap('v', '<S-Down>', [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
keymap('v', '<S-Up>', [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })
keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { silent = true })
