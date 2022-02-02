package = "ldt"
version = "scm-1"
source = {
   url = "git+https://github.com/solomonxie/lua-debug-tui.git"
}
description = {
   summary = "This is a text-based user interface command line debugging utility for Lua and Moonscript.",
   detailed = [[
This is a text-based user interface command line debugging utility for Lua and Moonscript.
It lets you browse the call stack, source code, and local variables right at the moment when
your code crashes (or when `ldt.breakpoint()` is called). Moonscript is fully supported, so the
callstack and source code panes will display the correct source for functions written in
Moonscript.]],
   homepage = "https://bitbucket.org/spilt/lua-debug-tui",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      ldt = "ldt.lua"
   }
}
