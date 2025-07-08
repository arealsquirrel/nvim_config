
require 'nvim-treesitter.configs'.setup {
	ensure_installed = {'c', 'cpp', 'lua', 'asm', 'glsl', 'hlsl', 'make', 'slang'},

	sync_installed = false,

	highlight = {
		enable = true
	}
}

