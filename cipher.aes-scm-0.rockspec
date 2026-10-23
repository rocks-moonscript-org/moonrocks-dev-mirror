package = "cipher.aes"
version = "scm-0"
source = {
  url = "https://github.com/osch/lua-cipher/archive/master.zip",
  dir = "lua-cipher-master",
}
description = {
  summary = "AES encryption (ECB, CBC, CFB, OFB, CTR, GCM) for Lua strings and carrays",
  homepage = "https://github.com/osch/lua-cipher",
  license = "MIT",
  detailed = [[
      The module cipher.aes of lua-cipher provides the AES block cipher with
      128, 192 and 256 bit keys in the modes ECB, CBC (PKCS#7 padding), CFB,
      CFB8, OFB, CTR and GCM (authenticated encryption), in one call or as a
      stream, and a reusable key schedule object for single blocks. Own
      self-contained C code (bitsliced, without table lookups), no external
      library. Data may be Lua strings or carray objects, read without
      copying; the output can be written directly into a carray.
  ]],
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["cipher.aes"] = {
      sources = { 
          "src/aes/main.c",
          "src/aes/aesmod.c",
          "src/aes/aes_ct64.c",
          "src/aes/ghash.c",
          "src/aes/aes_compat.c",
      },
      defines   = { "CIPHER_AES_VERSION="..version:gsub("^(.*)-.-$", "%1") },
    },
  },
  -- copy no directory: luarocks then installs the top-level README and
  -- LICENSE files into the rock's doc/ directory
  copy_directories = {},
}
