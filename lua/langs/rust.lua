function RustDoc(q)
    vim.fn.system("xdg-open https://doc.rust-lang.org/stable/std/?search=" .. q)
end

vim.cmd [[autocmd FileType rust nnoremap <buffer><leader>D :lua RustDoc(vim.api.nvim_call_function('fnameescape', {vim.fn.expand('<cword>')}))<CR>]]
