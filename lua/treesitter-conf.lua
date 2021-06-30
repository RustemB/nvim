require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "dart", "latex", 'bash', 'c', 'comment', 'cpp', 'fennel', 'gdscript',
        'haskell', 'html', 'julia', 'lua', 'python', 'rust', 'toml', 'yaml'
    },
    highlight = {enable = true}
}
