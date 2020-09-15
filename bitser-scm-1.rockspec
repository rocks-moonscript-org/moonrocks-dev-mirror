package = "bitser"
version = "scm-1"
source = {
   url = "git://github.com/gvx/bitser"
}
description = {
   summary = "bitser LuaJIT serialization library.",
   detailed = [[
      Serializes and deserializes Lua values with LuaJIT.
      Please note that bitser requires LuaJIT for its ffi library and JIT compilation. Without JIT, it may or may not run, but it will be much slower than usual. This primarily affects Android and iOS, because JIT is disabled on those platforms.
   ]],
   homepage = "https://github.com/gvx/bitser", -- We don't have one yet
   license = "?" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4"
   -- If you depend on other rocks, add them here
}
build = {
   type = "builtin",
   modules = {
    bitser = "bitser.lua"
    }
}