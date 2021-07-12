require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "css", "dart", "latex", 'bash', 'c', 'comment', 'cpp', 'fennel',
        'gdscript', 'haskell', 'html', "javascript", 'julia', 'lua', 'python',
        "regex", 'rust', 'toml', 'yaml'
    },
    highlight = {enable = true}
}
