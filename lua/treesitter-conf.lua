require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'css', 'dart', 'latex', 'bash', 'c', 'comment', 'cmake', 'cpp',
        'fennel', 'fortran', 'gdscript', 'glsl', 'haskell', 'html',
        'javascript', 'julia', 'llvm', 'lua', 'python', 'regex', 'rust', 'scss',
        'toml', 'vim', 'yaml', 'zig'
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
