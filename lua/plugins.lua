vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'lambdalisue/suda.vim'
    use 'hrsh7th/nvim-compe'
    use 'neovim/nvim-lspconfig'
    use 'srcery-colors/srcery-vim'
    use 'itchyny/lightline.vim'
    use 'andweeb/presence.nvim'
    use 'rafcamlet/nvim-luapad'
    use 'npxbr/glow.nvim'
    use 'svermeulen/vimpeccable'
    use 'L3MON4D3/LuaSnip'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
end)
