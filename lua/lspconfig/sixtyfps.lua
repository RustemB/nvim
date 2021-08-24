local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

configs.sixtyfps = {
    default_config = {
        cmd = {'sixtyfps-lsp'},
        filetypes = {'sixtyfps'},
        root_dir = function(filename) return util.path.dirname(filename) end
    },
    docs = {
        package_json = 'https://github.com/facebook/pyre-check/blob/main/tools/ide_plugins/vscode/package.json',
        description = [[
https://pyre-check.org/
`pyre` a static type checker for Python 3.
]]
    }
}
