rockspec_format = '3.0'
package = 'mhttp'
version = 'scm-1'

source = {
  url = 'git+https://github.com/mischief/mhttp.git',
  branch = 'main',
}

description = {
  summary = 'HTTP/1.1 server and client over any event loop',
  detailed = [[
mhttp is an HTTP/1.1 server and client for Lua 5.4. The parser and the
serializer do no I/O; the server and the client use a small stream
interface, so any event loop or coroutine scheduler can drive them.
Framing is strict against request smuggling and response splitting.
]],
  homepage = 'https://github.com/mischief/mhttp',
  license = 'ISC',
  labels = { 'http', 'parser', 'sans-io' },
}

supported_platforms = { 'unix' }

-- The parser, the serializer, the router and mhttp.coro need only Lua.
-- The sockets, the loops, the handlers and the programs need luaposix.
dependencies = {
  'lua >= 5.4',
  'luaposix',
}

-- The Makefile installs every Lua module under mhttp/ and mhttpx/, and
-- builds mhttp.sys, and the libtls backend where libtls links.
build = {
  type = 'make',
  build_variables = {
    CFLAGS = '$(CFLAGS)',
    LIBFLAG = '$(LIBFLAG)',
    LUA_INCDIR = '$(LUA_INCDIR)',
  },
  install_variables = {
    LUADIR = '$(LUADIR)',
    LIBDIR = '$(LIBDIR)',
  },
  install = {
    bin = {
      mhttpx = 'bin/mhttpx',
      mhttpd = 'bin/mhttpd',
    },
  },
}

test = {
  type = 'command',
  script = 'test/run.lua',
}
