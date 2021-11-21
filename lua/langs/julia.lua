function JuliaDoc(q)
    local qq = vim.fn.fnameescape(q)
    vim.fn.system("xdg-open https://docs.julialang.org/en/v1/search/?q=" .. qq)
end

vim.cmd [[
augroup LOCAL_JULIA
autocmd!
autocmd BufEnter *.jl lua vim.opt.filetype = "julia"
autocmd FileType julia nnoremap <buffer><leader>D :lua JuliaDoc(vim.fn.expand('<cword>'))<CR>
augroup END
]]
