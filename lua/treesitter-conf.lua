require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'css', 'dart', 'latex', 'bash', 'c', 'comment', 'cmake', 'cpp',
        'fennel', 'gdscript', 'haskell', 'html', 'javascript', 'julia', 'lua',
        'python', 'regex', 'rust', 'toml', 'yaml'
    },
    highlight = {enable = true},
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            }
        }
    }
}
