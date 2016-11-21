package = "se.zash.inet";
version = "scm-1";
source = {
	url = "hg+https://code.zash.se/lua-netaddr/";
};
description = {
	homepage = "https://code.zash.se/lua-netaddr/";
	license = "MIT";
};
dependencies = {
	"lua >= 5.1, < 5.4";
};
build = {
	type = "builtin";
	modules = {
		["se.zash.inet"] = {
			sources = "inet.c";
		};
	};
};
