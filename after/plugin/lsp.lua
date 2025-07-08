
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'rust_analyzer',
	'clangd',
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-y>'] = cmp.mapping.confirm({ select = true}),
	['C-Space'] = cmp.mapping.complete()
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.setup()

