package = "ffi-bzlib"
version = "scm-1"
source = {
   url = "git+https://github.com/lalawue/ffi-bzlib"
}
description = {
   summary = "LuaJIT FFI Bindings for bzlib",
   detailed = [[LuaJIT FFI Bindings for bzlib]],
   homepage = "https://github.com/lalawue/ffi-bzlib",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["ffi_bzlib.init"] = "src/init.lua",
      ["ffi_bzlib.compress"] = "src/compress.lua",
      ["ffi_bzlib.decompress"] = "src/decompress.lua",
   },
}
