require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'bash', 'c', 'comment', 'cpp', 'gdscript', 'html', 'julia', 'lua',
        'python', 'rust', 'toml', 'yaml', 'fennel', "dart", "latex"
    },
    highlight = {enable = true}
}
