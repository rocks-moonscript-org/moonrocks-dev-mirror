rockspec_format = "3.0"
package = "utf16"
version = "dev-1"
source = {
   url = "git+https://github.com/goldenstein64/lua-utf16.git"
}
description = {
   summary = "Minimal support for the UTF-16 encoding for Lua.",
   detailed = [[
      Forked from https://github.com/vtudorache/lua-utf16

      This library provides minimal support for the UTF-16 encoding. Operations
      that query the meaning of a character, such as character classification,
      are outside its scope. Since strings in Lua can have embedded zeros, the
      library uses the default Lua string type to hold the UTF-16 data. The
      encoding of a particular string is the user's responsibility.
   ]],
   homepage = "https://github.com/goldenstein64/lua-utf16",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      utf16 = {
         sources = "utf16.c"
      }
   }
}
