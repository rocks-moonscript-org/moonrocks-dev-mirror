package = "lfft"
version = "scm-0"
source = {
  url = "https://github.com/osch/lua-lfft/archive/master.zip",
  dir = "lua-lfft-master",
}
description = {
  summary = "Fast fourier transform library",
  homepage = "https://github.com/osch/lua-lfft",
  license = "MIT",
  detailed = [[
    This Lua module provides a binding to stb_fft, a fast fourier transform library 
    suitable for power of 2 and non-power of 2 ( https://github.com/cpuimage/stb_fft ).
  ]],
}
dependencies = {
  "lua >= 5.1, <= 5.4",
  "carray"
}
build = {
  type = "builtin",
  modules = {
    lfft = {
      sources = { 
          "src/main.c",
          "src/lfft.c",
          "src/lfft_compat.c",
          "src/calcfloat.c",
          "src/calcdouble.c",
      },
      defines = { "LFFT_VERSION="..version:gsub("^(.*)-.-$", "%1") },
    },
  }
}
