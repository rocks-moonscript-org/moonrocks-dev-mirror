package = 'lunatic-python'
version = 'scm-0'
source = {
	url = 'git+https://github.com/leso-kn/lunatic-python',
	branch = 'luarocks'
}
description = {
	summary = 'Two-way bridge between Python and Lua',
	homepage = 'https://github.com/bastibe/lunatic-python',
	license = 'MIT'
}
build = {
	type = 'make',
	makefile = 'Makefile.luarocks',
	variables = {
		LIBDIR = '$(LIBDIR)'
	}
}
