package = "se.zash.poll";
version = "scm-1";
source = {
	url = "hg+https://code.zash.se/lua-poll/";
};
description = {
	homepage = "https://code.zash.se/lua-poll/";
	license = "MIT";
	summary = "Minimal FD polling library",
	detailed = [[
Minimalistic library for polling a set of file descriptors.
Uses the epoll API if compiled on Linux, otherwise select().
]],
}
dependencies = {
	"lua >= 5.2, < 5.4";
};
build = {
	type = "builtin";
	modules = {
		["se.zash.poll"] = {
			sources = "poll.c";
		};
	};
};
