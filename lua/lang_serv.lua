local nvim_lsp = require('lspconfig')
nvim_lsp.gdscript.setup{}
nvim_lsp.vimls.setup{}
nvim_lsp.clangd.setup{}
nvim_lsp.bashls.setup{}
nvim_lsp.hls.setup{}
nvim_lsp.rls.setup {
	settings = {
		rust = {
			unstable_features = true,
		},
	},
}
