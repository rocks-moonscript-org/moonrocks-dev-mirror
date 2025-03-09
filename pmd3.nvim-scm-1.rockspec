package = 'pmd3.nvim'
version = 'scm-1'
source = {
	url = 'https://codeberg.org/leso-kn/pmd3.nvim/archive/main.zip',
	dir = 'pmd3.nvim'
}
description = {
	summary = 'A neovim plugin for the Paged Markdown 3 document-format for scientific writing',
	homepage = 'https://codeberg.org/leso-kn/pmd3.nvim',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['lua.nvim-pmd3'] = 'lua/nvim-pmd3.lua',
		['plugin.pmd3'] = 'plugin/pmd3.lua'
	}
}
dependencies = {
	'lua-websockets ~> v2',
	'paged-markdown-3 ~> 0.1',
	'sfs ~> 0.1'
}
