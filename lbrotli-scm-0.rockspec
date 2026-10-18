package = "lbrotli"
version = "scm-0"
source = {
  url = "https://github.com/osch/lua-lbrotli/archive/master.zip",
  dir = "lua-lbrotli-master",
}
description = {
  summary = "Brotli compression and decompression for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-lbrotli",
  license = "MIT",
  detailed = [[
      This Lua module provides Brotli compression and decompression
      (libbrotlienc/libbrotlidec) for Lua strings and carray objects, in one
      call or as a stream. Carrays are read without copying and can receive
      the output directly.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  BROTLIDEC = {
    header  = "brotli/decode.h",
    library = "brotlidec",
  },
  BROTLIENC = {
    header  = "brotli/encode.h",
    library = "brotlienc",
  },
}
build = {
  type = "builtin",
  modules = {
    lbrotli = {
      sources = { 
          "src/main.c",
          "src/lbrotli.c",
          "src/lbrotli_compat.c",
      },
      defines   = { "LBROTLI_VERSION="..version:gsub("^(.*)-.-$", "%1") },
      libraries = { "brotlidec", "brotlienc" },
      incdirs   = { "$(BROTLIDEC_INCDIR)", "$(BROTLIENC_INCDIR)" },
      libdirs   = { "$(BROTLIDEC_LIBDIR)", "$(BROTLIENC_LIBDIR)" },
    },
  },
}
