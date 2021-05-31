local nvim_lsp = require('lspconfig')

nvim_lsp.sumneko_lua.setup {
    cmd = {
        'lua-language-server', "-E", '/usr/share/lua-language-server/main.lua'
    },
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            diagnostics = {globals = {'vim'}},
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            },
            telemetry = {enable = false}
        }
    }
}
nvim_lsp.gdscript.setup {}
nvim_lsp.vimls.setup {}
nvim_lsp.clangd.setup {}
nvim_lsp.bashls.setup {}
nvim_lsp.hls.setup {}
nvim_lsp.elmls.setup {}
nvim_lsp.julials.setup {}
nvim_lsp.yamlls.setup {}
nvim_lsp.pyls.setup {}
--[[
nvim_lsp.rls.setup {
	settings = {
		rust = {
			unstable_features = true,
		},
	},
}
--]]
nvim_lsp.rust_analyzer.setup {
    cmd = {"rustup", "run", "nightly", "rust-analyzer"}
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
                 {update_in_insert = true})
