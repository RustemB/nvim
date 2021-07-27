local neogit = require('neogit')
local ts = require("telescope.builtin")
local vimp = require('vimp')
local lsp = vim.lsp.buf
local o = {'silent'}

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
vimp.nnoremap(o, 'Q', ts.lsp_code_actions)
vimp.nnoremap(o, '<leader>ff', lsp.formatting)

-- Telescope
vimp.nnoremap(o, '<C-p>', ts.git_files)

-- Buffers
vimp.nnoremap(o, '<leader>]', ':BufferNext<CR>')
vimp.nnoremap(o, '<leader>[', ':BufferPrevious<CR>')

for idx = 1, 9 do
    vimp.nnoremap(o, '<A-' .. idx .. '>', ':BufferGoto ' .. idx .. '<CR>')
end

vimp.nnoremap(o, '<A-w>', ':BufferClose<CR>')

-- Snippets

vim.cmd [[
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]]

-- NeoGit
vimp.nnoremap(o, '<leader>gg', neogit.open)
