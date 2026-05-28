package = "eth-secp256k1"
version = "dev-1"
source = {
  url = "git+https://github.com/DevElCuy/eth-secp256k1.git",
  branch = "main"
}
description = {
  summary = "secp256k1 recovery helpers for Lua 5.1",
  detailed = [[
Small Lua C module exposing recoverable secp256k1 public-key recovery for standard Lua 5.1.
]],
  homepage = "https://github.com/DevElCuy/eth-secp256k1",
  license = "MIT"
}
dependencies = {
  "lua = 5.1"
}
external_dependencies = {
  SECP256K1 = {
    header = "secp256k1.h",
    library = "secp256k1"
  }
}
build = {
  type = "builtin",
  modules = {
    eth_secp256k1 = {
      sources = { "src/eth_secp256k1.c" },
      libraries = { "secp256k1" }
    }
  }
}
