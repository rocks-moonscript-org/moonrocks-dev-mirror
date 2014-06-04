package = "lua-zmq-threads"
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
	"lua-zmq = scm-1",
	"lua-llthreads = scm-1",
}
build = {
	type = "none",
	install = {
		lua = {
			['zmq.threads'] = "src/threads.lua",
		},
	},
}
