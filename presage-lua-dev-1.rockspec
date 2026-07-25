package = "presage-lua"
version = "dev-1"

source = {
   url = "ssh://git@codeberg.org/rousbound/presage-lua.git",
   branch = "main"
}

description = {
   summary = "Presage bindings for Lua",
   detailed = [[
      Lua bindings for the presage client
   ]],
   homepage = "https://github.com/rousbound/presage-lua",
   license = "GPLv3"
}

dependencies = {
   "lua >= 5.1, <= 5.5",
   "luarocks-build-rust-mlua",
}

build = {
   type = "rust-mlua",
   modules = {
      ["presage"] = "presage",
   },
}
