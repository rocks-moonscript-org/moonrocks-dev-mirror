package = "lua-libdeflate"
version = "dev-1"
source = {
   url = "https://codeberg.org/asie/lua-libdeflate"
}
description = {
   summary = "Lua bindings for the libdeflate decompression library.",
   homepage = "https://codeberg.org/asie/lua-libdeflate",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      libdeflate = {
         "libdeflate/lib/arm/cpu_features.c",
         "libdeflate/lib/x86/cpu_features.c",
         "libdeflate/lib/adler32.c",
         "libdeflate/lib/crc32.c",
         "libdeflate/lib/deflate_compress.c",
         "libdeflate/lib/deflate_decompress.c",
         "libdeflate/lib/gzip_compress.c",
         "libdeflate/lib/gzip_decompress.c",
         "libdeflate/lib/utils.c",
         "libdeflate/lib/zlib_compress.c",
         "libdeflate/lib/zlib_decompress.c",
         "lua-libdeflate.c"
      }
   }
}
