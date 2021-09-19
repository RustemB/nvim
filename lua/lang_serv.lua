local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.sumneko_lua.setup {
    cmd = {
        'lua-language-server', "-E", '/usr/share/lua-language-server/main.lua'
    },
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            diagnostics = {globals = {'vim', 'xplr'}},
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            },
            telemetry = {enable = false},
            completion = {keywordSnippet = "Disable"}
        }
    }
}
require("lspconfig/sixtyfps")
nvim_lsp.sixtyfps.setup {}
require("lspconfig/asm")
nvim_lsp.asm.setup {}
nvim_lsp.cssls.setup {capabilities = capabilities}
nvim_lsp.html.setup {capabilities = capabilities}
nvim_lsp.gdscript.setup {}
nvim_lsp.dartls.setup {}
nvim_lsp.clangd.setup {}
nvim_lsp.bashls.setup {}
nvim_lsp.hls.setup {}
nvim_lsp.elmls.setup {}
nvim_lsp.julials.setup {}
nvim_lsp.taplo.setup {}
nvim_lsp.yamlls.setup {}
nvim_lsp.pylsp.setup {}
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
nvim_lsp.efm.setup {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            markdown = {
                {formatCommand = "pandoc -f markdown -t gfm -sp --tab-stop=2"}
            },
            lua = {{formatCommand = "lua-format -i", formatStdin = true}},
            sh = {
                {formatCommand = "shfmt -ci -s -bn", formatStdin = true}, {
                    lintCommand = "shellcheck -f gcc -x",
                    lintSource = "shellcheck",
                    lintFormats = {
                        '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m',
                        '%f:%l:%c: %tote: %m'
                    }
                }
            },
            make = {{lintCommand = "checkmake", lintStdin = true}},
            python = {
                {
                    lintCommand = 'mypy --show-column-numbers',
                    lintFormats = {
                        '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m',
                        '%f:%l:%c: %tote: %m'
                    }
                }
            }
        }
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
                 {update_in_insert = true})
