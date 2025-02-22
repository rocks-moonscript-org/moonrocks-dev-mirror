-- DO NOT EDIT! Modify template sile.rockspec.in
rockspec_format = "3.0"
package = "rusile"
version = "dev-1"

source = {
   url = "git+https://github.com/sile-typesetter/sile.git",
   branch = "master",
}

description = {
   summary = "Lua bridge to Rust components of SILE",
   detailed = [[The Rusty bits of SILE made available to Lua]],
   license = "MIT",
   homepage = "https://github.com/sile-typesetter/sile",
   issues_url = "https://github.com/sile-typesetter/sile/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
   labels = { "typesetting" },
}

dependencies = {
   "lua >= 5.1",
   "luarocks-build-rust-mlua >= 0.2.3-1",
}

build = {
   type = "rust-mlua",
   modules = {
      "rusile",
   },
}

