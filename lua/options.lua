local o = vim.opt
o.completeopt = {'menuone', 'noselect', 'noinsert'}
o.expandtab = true
o.foldmethod = 'marker'
o.ignorecase = true
o.mouse = {a = true}
o.number = true
o.relativenumber = true
o.shiftwidth = 4
o.showmode = false
o.signcolumn = 'yes'
o.smartcase = true
o.termguicolors = true
o.title = true
o.grepprg = 'rg --vimgrep --smart-case --hidden'
o.grepformat = {'%f:%l:%c:%m'}
