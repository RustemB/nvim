local util = require 'lspconfig/util'

return {
    default_config = {
        cmd = {'glslls', '--stdio'},
        filetypes = {'glsl'},
        root_dir = function(filename) return util.path.dirname(filename) end
    },
    docs = {
        description = [[
https://github.com/bergercookie/asm-lsp
]]
    }
}
