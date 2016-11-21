package = "se.zash.strbitop";
version = "scm-1";
source = {
	url = "hg+https://code.zash.se/lua-strbitop/";
};
description = {
	homepage = "https://code.zash.se/lua-strbitop/";
	license = "MIT";
};
dependencies = {
	"lua >= 5.1, < 5.4";
};
build = {
	type = "builtin";
	modules = {
		["se.zash.strbitop"] = {
			sources = "strbitop.c";
		};
	};
};
