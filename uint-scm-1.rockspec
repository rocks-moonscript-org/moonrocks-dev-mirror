package = "uint"
version = "scm-1"
source = {
    url = "git://github.com/SupTan85/lua-uint.git"
}

description = {
    summary    = "make it possible to calculate large number (bignum) in Lua, Pure Lua number library!",
    homepage   = "https://github.com/SupTan85/lua-uint.git",
    license    = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    uint = "src/int.lua"
  }
}
