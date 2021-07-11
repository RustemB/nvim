function RustDoc(q)
    local qq = vim.fn.fnameescape(q)
    vim.fn
        .system("xdg-open https://doc.rust-lang.org/stable/std/?search=" .. qq)
end

vim.cmd [[
augroup LOCAL_RUST
autocmd!
autocmd FileType rust nnoremap <buffer><leader>D :lua RustDoc(vim.fn.expand('<cword>'))<CR>
augroup END
]]
