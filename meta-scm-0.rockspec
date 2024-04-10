rockspec_format = "3.0"
package = "meta"
version = "scm-0"

source = {
  url = "git://github.com/luatoolz/lua-meta",
}

description = {
  summary = "lua meta methods library",
  detailed = [[
loader - dynamic loader, supports dotted module names, recursion without init.lua in dirs (nice for automatic using large automatic modules hierarchy)
preloader - preloading wrapper for loader, supports module iterating by submodules (useful for seamless module handling without register-like routines)
memoize - memoize front, supports function / closure / mt.__call
prequire - pcall require
computed - like js computed object, effective for data structures fast defining
chain - chain multiple modules, useful for typed hierarchy combined with multiple objects definitions
]],
  homepage = "https://github.com/luatoolz/lua-meta",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/lua-meta/issues",
  maintainer = "luatoolz@somahorse.com"
}

dependencies = {
  "lua >= 5.1",
  "paths",
  "compat53"
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}

build = {
  copy_directories = {},
  type = "builtin",
  modules = {
    ["meta.loader"] = "meta/loader.lua",
    ["meta.preloader"] = "meta/preloader.lua",
    ["meta.init"] = "meta/init.lua",
    ["meta.prequire"] = "meta/prequire.lua",
    ["meta.memoize"] = "meta/memoize.lua",
    ["meta.computed"] = "meta/computed.lua",
    ["meta.chain"] = "meta/chain.lua",
  }
}
