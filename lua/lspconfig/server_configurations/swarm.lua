local util = require 'lspconfig/util'

return {
    default_config = {
        cmd = {'swarm', 'lsp'},
        filetypes = {'swarm'},
        root_dir = function(filename) return util.path.dirname(filename) end
    }
}
