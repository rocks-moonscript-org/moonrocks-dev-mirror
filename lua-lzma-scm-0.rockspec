package = "lua-lzma"
version = "scm-0"
source = {
   url = "https://codeberg.org/leso-kn/lua-lzma/archive/main.tar.gz",
   dir = "lua-lzma"
}
description = {
   homepage = "https://codeberg.org/leso-kn/lua-lzma",
   license = "MIT",
   summary = "LZMA compression and decompression functionality extracted from luazen for Lua 5.1 - 5.4 + JIT."
}
build = {
   type = "builtin",
   modules = {
      lzma = {
         sources = {
            "src/lua-lzma.c",
            "src/lzma/Alloc.c",
            "src/lzma/CpuArch.c",
            "src/lzma/LzFind.c",
            "src/lzma/LzFindMt.c",
            "src/lzma/LzFindOpt.c",
            "src/lzma/LzmaDec.c",
            "src/lzma/LzmaEnc.c",
            "src/lzma/LzmaLib.c",
            "src/lzma/Threads.c"
         },
         incdirs = {
            "src",
            "src/lzma"
         }
      }
   }
}
