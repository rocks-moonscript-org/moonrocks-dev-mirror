package = "lua-shoco"
version = "dev-1"
source = {
  url = "."
}

description = {
  summary = "Lua bindings for the shoco compressor aimed at very short strings",
  detailed = [[
Expose shoco's compression and decompression routines to Lua, providing
zero-dependency binary-safe bindings that embed the original shoco sources.
  ]],
  homepage = "https://github.com/leafo/lua-shoco",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.5"
}

build = {
  type = "builtin",
  modules = {
    shoco = {
      sources = {
        "src/lua_shoco.c",
        "src/shoco.c"
      },
      incdirs = {
        "src"
      }
    }
  }
}
