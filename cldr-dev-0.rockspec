rockspec_format = "3.0"
package = "cldr"
version = "dev-0"

source = {
   url = "git+https://github.com/alerque/cldr-lua.git",
   branch = "master"
}

description = {
   summary = "Lua interface to Unicode CLDR data",
   detailed = [[Unicode CLDR (Common Locale Data Repository) data and Lua interface.]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/cldr-lua",
   issues_url = "https://github.com/alerque/cldr-lua/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
   labels = { "i18n", "unicode" }
}

dependencies = {
   "lua >= 5.1",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua",
      ["cldr.data.locales"] = "cldr/data/locales.lua"
   }
}
