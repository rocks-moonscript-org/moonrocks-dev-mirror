package = "compress"
version = "scm-0"
source = {
  url = "https://github.com/osch/lua-compress/archive/master.zip",
  dir = "lua-compress-master",
}
description = {
  summary = "Compression libraries for Lua strings and carrays (meta rock)",
  homepage = "https://github.com/osch/lua-compress",
  license = "MIT",
  detailed = [[
      The meta rock of lua-compress: it installs all compression modules of
      lua-compress (currently compress.brotli, compress.zlib, compress.lzma
      and compress.bzip2) and the pure Lua module compress, through which they
      are loaded on first access, e.g. require("compress").zlib is
      require("compress.zlib"). Data may be Lua strings or carray objects,
      read without copying; the output can be written directly into a
      carray.
  ]],
}
dependencies = {
  "lua >= 5.1",
  "compress.brotli",
  "compress.zlib",
  "compress.lzma",
  "compress.bzip2",
}
build = {
  type = "builtin",
  modules = {
    compress = "src/compress.lua",
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
