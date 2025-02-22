package = "luahotkey"
version = "scm-1"
source = {
   url = "git+https://github.com/quadratech188/LuaHotKey",
   branch = "main"
}
supported_platforms = {
	'windows', 'win32', 'cygwin'
}
dependencies = {
	'lua >= 5.1'
}
description = {
   homepage = "https://github.com/quadratech188/LuaHotKey",
   license = "MIT"
}
build = {
	variables = {
		LUA_LIBDIR = "$(LUA_LIBDIR)",
		LUA_INCDIR = "$(LUA_INCDIR)",
		LUA_LIBDIR_FILE = "$(LUA_LIBDIR_FILE)"
	},
	type = "cmake",

	install = {
		lib = {
			[''] = 'lib/lhk_core.dll'
		},
		lua = {
			['definitions.lhk_core'] = 'definitions/lhk_core.lua',

			['lhk.init'] = 'lhk/init.lua',
		    ['lhk.core_wrapper'] = 'lhk/core_wrapper.lua',
		    ['lhk.modifiers'] = 'lhk/modifiers.lua',
		    ['lhk.KeyStrokes'] = 'lhk/KeyStrokes.lua',
			['lhk.utils'] = 'lhk/utils.lua',

		    ['vkCode.init'] = 'vkCode/init.lua',
		    ['vkCode.vkCodes'] = 'vkCode/vkCodes.lua'

		}
	}
}
