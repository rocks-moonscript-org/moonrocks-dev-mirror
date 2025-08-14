package = "lue"
version = "scm-0"
source = {
	url = 'git+https://codeberg.org/leso-kn/lue'
}
description = {
	summary = 'Lightweight Vue bundler and web package manager',
	homepage = 'https://codeberg.org/leso-kn/lue',
	license = 'MIT'
}
build = {
	type = 'lrocket',
	entrypoint = 'lue/main.lua',
	output = 'bin/lue',

	exclude = { 'compat53.utf8' }
}
dependencies = {
	'argparse ~> 0.7',
	'lua-cjson ~> 2',
	'luafilesystem ~> 1',
	'luasec ~> 1',
	'sass ~> 0.1',
	'semver ~> 1',
	'xmlpeg ~> 0.4'
}
