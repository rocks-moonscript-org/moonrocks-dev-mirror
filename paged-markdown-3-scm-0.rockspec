package = 'paged-markdown-3'
version = 'scm-0'
source = {
	url = 'https://codeberg.org/leso-kn/lua-paged-markdown-3/archive/main.zip',
	dir = 'lua-paged-markdown-3'
}
description = {
	summary = 'A library to render Paged Markdown 3 documents in Lua',
	homepage = 'https://codeberg.org/leso-kn/lua-paged-markdown-3',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['pmd3'] = 'pmd3/init.lua',
	}
}
dependencies = {
	'lua-discount2 ~> 2',
	'syntaxhighlight ~> 1',
	'xmlpeg ~> 0.3'
}
