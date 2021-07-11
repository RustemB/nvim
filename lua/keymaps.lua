local vimp = require('vimp')

-- code movement
vimp.nnoremap({'silent'}, '<S-Down>', ':m .+1<CR>==')
vimp.nnoremap({'silent'}, '<S-Up>', ':m .-2<CR>==')
vimp.inoremap({'silent'}, '<S-Down>', '<ESC>:m .+1<CR>==gi')
vimp.inoremap({'silent'}, '<S-Up>', '<ESC>:m .-2<CR>==gi')
vimp.vnoremap({'silent'}, '<S-Down>', [[:m '>+1<CR>gv=gv]])
vimp.vnoremap({'silent'}, '<S-Up>', [[:m '<-2<CR>gv=gv]])

-- lsp
vimp.nnoremap({'silent'}, 'K', function() vim.lsp.buf.hover() end)
vimp.nnoremap({'silent'}, '<leader>r', function() vim.lsp.buf.rename() end)
vimp.nnoremap({'silent'}, '<leader>gd', function() vim.lsp.buf.definition() end)
vimp.nnoremap({'silent'}, 'Q',
              function() require("telescope.builtin").lsp_code_actions() end)
vimp.nnoremap({'silent'}, '<leader>ff', function() vim.lsp.buf.formatting() end)
