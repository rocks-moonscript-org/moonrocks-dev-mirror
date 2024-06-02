package = "netmon"
version = "dev-1"
source = {
   url = "git+https://github.com/TsukiGva2/NetMon.lua"
}
description = {
   homepage = "https://github.com/TsukiGva2/NetMon.lua",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      checknet = "checknet.lua",
      directories = "directories.lua",
      ["debugger.debugger"] = "debugger/debugger.lua",
      ["debugger.embed.debugger_lua.c"] = "debugger/embed/debugger_lua.c.lua",
      ["debugger.test.test"] = "debugger/test/test.lua",
      ["debugger.test.test_util"] = "debugger/test/test_util.lua",
      ["debugger.tutorial"] = "debugger/tutorial.lua",
      itool = "itool.lua",
      monitor = "monitor.lua",
      netlog = "netlog.lua",
      netmon = "netmon.lua"
   },
   install = {
	bin = {
		["netmon"] = "checknet.lua"
	}
   }
}
