package = "Webska"
version = "dev-0"

description = {
	summary = "Lightweight Web Application Framework",
	detailed = [[
		Webska is a lightweight web application framework written in Lua. It
		provides all basic components required to start development of persistent
		web applications. Since it tries to be lightweight, developed application
		and the web server still need to be interconnected via uWSGI (or any other
		WSAPI-compatible connector toolkit).
	]],

	homepage = "https://pi.zeta.sx/webska",
	license = "3-Clause BSD"
}

source = {
	url = "hg+https://pi.zeta.sx/hg/webska",
	branch = "default",
	tag = "tip"
}

dependencies = {
	"dkjson >= 2.4",
	"inspect >= 2.0",
	"lua >= 5.1",
	"lua-apr >= 0.18",
	"lua-messagepack >= 0.3.0",
	"lualogging >= 1.1.4",
	"luasocket >= 2.0.2",
	"luasyslog >= 1.0.0",
	"middleclass >= 3.0.0",
}

build = {
	type = "builtin",
	modules = {
		["zsx.webska.application"]            = "sources/webska/application.lua",
		["zsx.webska.output-stream"]          = "sources/webska/output-stream.lua",
		["zsx.webska.random-input-stream"]    = "sources/webska/random-input-stream.lua",
		["zsx.webska.router"]                 = "sources/webska/router.lua",

		["zsx.webska.http.make-cookie-pair"]  = "sources/webska/http/make-cookie-pair.lua",
		["zsx.webska.http.parse-query"]       = "sources/webska/http/parse-query.lua",
		["zsx.webska.http.unpack-cookies"]    = "sources/webska/http/unpack-cookies.lua",
		["zsx.webska.http.unpack-payload"]    = "sources/webska/http/unpack-payload.lua",

		["zsx.webska.tidbit.merge-to-table"]  = "sources/webska/tidbit/merge-to-table.lua",
		["zsx.webska.tidbit.merge-two-table"] = "sources/webska/tidbit/merge-two-table.lua",

		["zsx.webska.wsapi.adaptor"]          = "sources/webska/wsapi/adaptor.lua",
		["zsx.webska.wsapi.request"]          = "sources/webska/wsapi/request.lua",
		["zsx.webska.wsapi.response"]         = "sources/webska/wsapi/response.lua",
	}
}

--
-- Copyright (c) ZETA6 Computer Systems LLC
-- All rights reserved.
--
-- This software is distributed under the terms of the 3-Clause BSD License.
-- You should have received a copy of the 3-Clause BSD License along with
-- this software. If not, see <http://opensource.org/licenses/BSD-3-Clause>.
--
