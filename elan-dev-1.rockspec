rockspec_format = "3.0"
package = "elan"
version = "dev-1"
source = {
	url = "git+ssh://git@github.com/mna/elan.git"
}
description = {
	homepage = "*** please enter a project homepage ***",
	license = "MIT"
}
dependencies = {
	"lua ~> 5.1",
	"inspect ~> 3.1",
	"lpath ~> 0.4",
	"lua-cjson ~> 2.1", -- built-in in openresty, but to make require 'cjson' available for tests
	"lua-crontab ~> 1.0",
	"lua-resty-cookie ~> 0.4",
	"lua-resty-template ~> 2.0",
	"lua-resty-timer ~> 1.1",
	"luatz ~> 0.4",
	"moses ~> 2.1",
	"net-url ~> 1.1",
	"optparse ~> 1.5",
	"pgmoon ~> 1.16",
	"shell-games ~> 1.1",
	"yuescript ~> 0.25",
	-- the following are required to use pgmoon outside resty (by the elan CLI and in tests)
	"luaossl 20220711",
	"luasocket ~> 3.1",
}
test_dependencies = {
	"busted ~> 2.2",
	"luacov ~> 0.16",
	"luacov-multiple ~> 0.6",
}
test = {
	type = "busted",
}
build = {
	type = "builtin",
	modules = {
		["elan.bin.commands.init"] = "elan/bin/commands/init.lua",
		["elan.bin.commands.migrate"] = "elan/bin/commands/migrate.lua",
		["elan.bin.commands.utils"] = "elan/bin/commands/utils.lua",
		["elan.content"] = "elan/content/init.lua",
		["elan.db"] = "elan/db/init.lua",
		["elan.http.request"] = "elan/http/request.lua",
		["elan.http.response"] = "elan/http/response.lua",
		["elan.http.router"] = "elan/http/router.lua",
		["elan.init"] = "elan/init/init.lua",
		["elan.init.modules"] = "elan/init/modules.lua",
		["elan.init.routes"] = "elan/init/routes.lua",
		["elan.init.schedules"] = "elan/init/schedules.lua",
		["elan.init.templates"] = "elan/init/templates.lua",
		["elan.init.utils"] = "elan/init/utils.lua",
		["elan.init.workers"] = "elan/init/workers.lua",
		["elan.mq.client"] = "elan/mq/client.lua",
		["elan.mq.worker"] = "elan/mq/worker.lua",
		["elan.plugin"] = "elan/plugin/init.lua",
		["elan.worker"] = "elan/worker/init.lua",
		["elan.result"] = "elan/result.lua",
		["elan.xstring"] = "elan/xstring.lua",
		["elan.xtype"] = "elan/xtype.lua",
	},
	install = {
		bin = {
			elan = "elan/bin/elan.lua",
		},
	},
}
