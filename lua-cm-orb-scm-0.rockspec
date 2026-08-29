package = "lua-cm-orb"
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
		['cm-orb.init'] = 'cm-orb/init.lua'
	}
}
dependencies = {
	'lua-cmsgpack ~> 0.4',
	'sfs ~> 0.2'
}
