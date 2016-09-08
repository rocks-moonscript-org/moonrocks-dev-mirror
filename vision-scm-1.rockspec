package = "vision"
version = "scm-1"

source = {
   url = "git://github.com/karandwivedi42/vision.torchnet.git"
}

description = {
   summary = "Torch on steroids",
   detailed = [[
   Various abstractions for torch7.
   ]],
   homepage = "https://github.com/karandwivedi42/vision.torchnet",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torchnet >= 7.0",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      LUA_PATH="$(LUADIR)",
      LUA_CPATH="$(LIBDIR)"
   }
}

