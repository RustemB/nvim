local vimp = require('vimp')
local o = {'silent'}
local lsp = vim.lsp.buf
local lsp_code_actions = require("telescope.builtin").lsp_code_actions

-- code movement
vimp.nnoremap(o, '<S-Down>', ':m .+1<CR>==')
vimp.nnoremap(o, '<S-Up>', ':m .-2<CR>==')
vimp.inoremap(o, '<S-Down>', '<ESC>:m .+1<CR>==gi')
vimp.inoremap(o, '<S-Up>', '<ESC>:m .-2<CR>==gi')
vimp.vnoremap(o, '<S-Down>', [[:m '>+1<CR>gv=gv]])
vimp.vnoremap(o, '<S-Up>', [[:m '<-2<CR>gv=gv]])
vimp.tnoremap(o, '<Esc>', [[<C-\><C-n>]])

-- lsp
vimp.nnoremap(o, 'K', lsp.hover)
vimp.nnoremap(o, '<leader>r', lsp.rename)
vimp.nnoremap(o, '<leader>gd', lsp.definition)
vimp.nnoremap(o, 'Q', lsp_code_actions)
vimp.nnoremap(o, '<leader>ff', lsp.formatting)
