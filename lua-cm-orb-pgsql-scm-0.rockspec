package = "lua-cm-orb-pgsql"
version = "scm-0"
source = {
	url = "git+https://codeberg.org/leso-kn/cm-orb"
}
description = {
	homepage = "https://codeberg.org/leso-kn/cm-orb",
	license = "MIT"
}
build = {
	type = "builtin",
	modules = {
		['cm-orb/pgsql'] = 'cm-orb/pgsql.lua'
	}
}
dependencies = {
	'base64mix ~> 1',
	'luasql-postgres ~> 2'
}
