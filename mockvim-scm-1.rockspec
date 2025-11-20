package = "mockvim"
version = "scm-1"
source = {
   url = "git+https://github.com/YOUR_USERNAME/mockvim.git"
}
description = {
   summary = "A Lua library to mock the Neovim vim global object.",
   detailed = [[
      MockVim allows you to run Neovim plugin tests in a standalone Lua environment
      by mocking the global `vim` object, including recursive functions,
      stubs, and call verification.
   ]],
   homepage = "https://github.com/YOUR_USERNAME/mockvim",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["mockvim"] = "lua/mockvim/init.lua",
      ["mockvim.stub"] = "lua/mockvim/stub.lua"
   }
}
