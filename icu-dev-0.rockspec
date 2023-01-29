rockspec_format = "3.0"
package = "icu"
version = "dev-0"

source = {
   url = "git+https://github.com/alerque/icu-lua.git",
   branch = "master"
}

description = {
   summary = "Lua bindings for ICU",
   detailed = [[Full access to ICU4C functions from Lua]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/icu-lua",
   issues_url = "https://github.com/alerque/icu-lua/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
   labels = { "i18n", "unicode", "icu" }
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
   }
}
