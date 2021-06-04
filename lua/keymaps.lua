local keymap = vim.api.nvim_set_keymap

-- code movement
keymap('n', '<S-Down>', ':m .+1<CR>==', {noremap = true, silent = true})
keymap('n', '<S-Up>', ':m .-2<CR>==', {noremap = true, silent = true})
keymap('i', '<S-Down>', '<ESC>:m .+1<CR>==gi', {noremap = true, silent = true})
keymap('i', '<S-Up>', '<ESC>:m .-2<CR>==gi', {noremap = true, silent = true})
keymap('v', '<S-Down>', [[:m '>+1<CR>gv=gv]], {noremap = true, silent = true})
keymap('v', '<S-Up>', [[:m '<-2<CR>gv=gv]], {noremap = true, silent = true})

-- lsp
keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {silent = true})
keymap('n', '<leader>r', ':lua vim.lsp.buf.rename()<CR>', {silent = true})
keymap('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', {silent = true})
keymap('n', 'Q', ':lua require("telescope.builtin").lsp_code_actions()<CR>',
       {silent = true})
keymap('n', '<leader>ff', ':lua vim.lsp.buf.formatting()<CR>', {silent = true})
