rockspec_format = "3.0"
package = "uulua"
version = "dev-2"
source = {
	url = "git://github.com/DarkWiiPlayer/uulua";
}
description = {
	summary = "Generate UUIDs and ULIDs in plain lua.";
	detailed = ([[
		uuLua is a library to generate Universally Unique Identifiers, aka. UUIDs, written in pure lua.
	]]):gsub("\t", "");
	homepage = "https://darkwiiplayer.github.io/uulua/";
	license = "Unlicense";
	labels = { "uuid", "ulid" };
}
dependencies = {
	"lua >= 5.1";
}
build = {
	type = "builtin";
	modules = {
		uulua = "src/uulua.lua"
	};
	install = {
		bin = {
			uuid = 'bin/uuid';
			ulid = 'bin/ulid';
		}
	}
}
