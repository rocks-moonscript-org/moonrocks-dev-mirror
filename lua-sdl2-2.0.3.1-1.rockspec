package = "Lua-SDL2"
version = "2.0.3.1-1"
source = {
   url = "https://redmine.malikania.fr/attachments/download/175/Lua-SDL2-2.0.3-1-source.tar.gz",
   md5 = "bdeb064cdd59c9f2ab1a4a7fdc5db64f",
   dir = "Lua-SDL2-2.0.3-1-source"
}
description = {
   summary = "Lua-SDL2 is a pure C binding of SDL 2.0 for Lua 5.1, Lua 5.2 and LuaJIT.",
   detailed = "Lua-SDL2 is a pure C binding of SDL 2.0 for Lua 5.1, Lua 5.2 and LuaJIT.",
   homepage = "https://redmine.malikania.fr/projects/luasdl2",
   license = "ISC"
}
dependencies = {}
build = {
   type = "cmake",
   variables = {
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA_LIBDIR = "$(LIBDIR)",
      
      -- Disabling these to simplify build dependencies
      WITH_MIXER = "Off",
      WITH_TTF = "Off",
      WITH_NET = "Off",
      WITH_IMAGE = "Off",
      WITH_DOCS = "Off",
   },
   patches = {
      ["override-install-path.diff"] = [[
--- old/CMakeLists.txt	2014-10-03 13:58:54.682177235 -0400
+++ new/CMakeLists.txt	2014-06-01 05:24:33.000000000 -0400
@@ -95,17 +95,17 @@
 	find_package(Lua52 REQUIRED)
 	set(LUA_LIBRARIES ${LUA52_LIBRARIES})
 	set(LUA_INCLUDES ${LUA52_INCLUDE_DIR})
-	set(LUA_LIBDIR "lib/lua/5.2")
+	set(LUA_LIBDIR "lib/lua/5.2" CACHE STRING "Lua C Module Install Path")
 elseif (WITH_LUAVER MATCHES "51")
 	find_package(Lua51 REQUIRED)
 	set(LUA_LIBRARIES ${LUA_LIBRARIES})
 	set(LUA_INCLUDES ${LUA_INCLUDE_DIR})
-	set(LUA_LIBDIR "lib/lua/5.1")
+	set(LUA_LIBDIR "lib/lua/5.1" CACHE STRING "Lua C Module Install Path")
 elseif (WITH_LUAVER MATCHES "JIT")
 	find_package(LuaJIT REQUIRED)
 	set(LUA_LIBRARIES ${LUAJIT_LIBRARIES})
 	set(LUA_INCLUDES ${LUAJIT_INCLUDE_DIR})
-	set(LUA_LIBDIR "lib/lua/5.1")
+	set(LUA_LIBDIR "lib/lua/5.1" CACHE STRING "Lua C Module Install Path")
 else ()
 	message(FATAL_ERROR "Unknown Lua version ${WITH_LUAVER}, must be 51, 52 or JIT")
 endif ()
]]
   } 
}


