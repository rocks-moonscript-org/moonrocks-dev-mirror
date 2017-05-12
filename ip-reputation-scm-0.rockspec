package = "ip-reputation"
version = "scm-0"

description = {
	summary = "IP Reputation client library for Lua";
	homepage = "https://github.com/mozilla-services/ip-reputation-lua-client";
	license = "MPL-2.0"; -- TODO: check if valid
}

source = {
	url = "git+https://github.com/mozilla-services/ip-reputation-lua-client";
}

dependencies = {
	"lua >= 5.1";
	"compat53 >= 0.3"; -- Only if lua < 5.3
	"luasocket";
	"lua-cjson";
	"luasec >= 0.6-1"; -- https
	"openssl";
}

build = {
	type = "builtin";
	modules = {
		["ip-reputation"] = "src/ip-reputation.lua";
		["ip-reputation.hawk"] = "src/hawk.lua";
	};
}
