package = 'wildcard_pattern'
version = 'scm-1'
source = {
	url = 'git://github.com/gilzoide/wildcard_pattern.lua',
}
description = {
	summary = 'Library for using shell-like wildcards as string patterns',
	detailed = [[
Lua library for using shell-like wildcards as string patterns with support for importing gitignore-like file content.
]],
	license = 'Unlicense',
	maintainer = 'gilzoide <gilzoide@gmail.com>'
}
dependencies = {
	'lua >= 5.1',
}
build = {
	type = 'builtin',
	modules = {
		wildcard_pattern = 'wildcard_pattern.lua'
	}
}
