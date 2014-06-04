package = "lua-zmq"
version = "scm-1"
source = {
	url = "git://github.com/Neopallium/lua-zmq.git",
}
description = {
	summary = "Lua bindings to zeromq2, with LuaJIT2 FFI support.",
	homepage = "http://github.com/Neopallium/lua-zmq",
	license = "MIT/X11",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		zmq = {
			sources = {"src/pre_generated-zmq.nobj.c"},
			libraries = {"zmq"},
		},
	},
	install = {
		lua = {
			['zmq.poller'] = "src/poller.lua",
		},
	},
}
