package = "syntax-epee.nvim"
version = "scm-1"
source = {
   url = "git://github.com/StevenCederrand/syntax-epee"
}
description = {
   summary = "Syntax Épée let's one view all of the lsp errors/warnings/info/hints in the file you are currently working in.",
   detailed = [[
Syntax Épée let's one view all of the lsp errors/warnings/info/hints in the file you are currently
working in. This builds upon telescope in order to display and filter the messages.]],
   homepage = "https://github.com/stevencederrand/syntax-epee",
   license = ""
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["syntax-epee.init"] = "lua/syntax-epee/init.lua"
   }
}
