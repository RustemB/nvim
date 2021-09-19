local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.asm = {
    default_config = {
        cmd = {'asm-lsp'},
        filetypes = {'nasm'},
        root_dir = function(filename) return util.path.dirname(filename) end
    },
    docs = {
        description = [[
https://github.com/bergercookie/asm-lsp
]]
    }
}
