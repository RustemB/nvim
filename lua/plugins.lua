-- TODO: use packer.nvim instead

vim.cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq

paq {'savq/paq-nvim', opt=true}
paq {'nvim-treesitter/nvim-treesitter', run=(function() vim.cmd('TSUpdate') end)}
paq 'hrsh7th/nvim-compe'
paq 'neovim/nvim-lspconfig'
paq 'srcery-colors/srcery-vim'
paq 'itchyny/lightline.vim'
paq 'andweeb/presence.nvim'
paq 'romgrk/nvim-treesitter-context'
paq 'rafcamlet/nvim-luapad'
paq 'npxbr/glow.nvim'
