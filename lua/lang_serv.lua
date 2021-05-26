local nvim_lsp = require('lspconfig')
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = 'lua-language-server'

nvim_lsp.sumneko_lua.setup {
  cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" };
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
nvim_lsp.gdscript.setup{}
nvim_lsp.vimls.setup{}
nvim_lsp.clangd.setup{}
nvim_lsp.bashls.setup{}
nvim_lsp.hls.setup{}
nvim_lsp.elmls.setup{}
nvim_lsp.julials.setup{}
nvim_lsp.yamlls.setup{}
nvim_lsp.rls.setup {
	settings = {
		rust = {
			unstable_features = true,
		},
	},
}
