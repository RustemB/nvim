vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'hrsh7th/nvim-compe'
    use 'neovim/nvim-lspconfig'
    use 'srcery-colors/srcery-vim'
    use 'itchyny/lightline.vim'
    use 'andweeb/presence.nvim'
    use 'romgrk/nvim-treesitter-context'
    use 'rafcamlet/nvim-luapad'
    use 'npxbr/glow.nvim'
end)
