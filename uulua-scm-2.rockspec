package = "uulua"
version = "scm-2"
source = {
	url = "git://github.com/DarkWiiPlayer/uulua";
}
description = {
	summary = "Generate UUIDs in plain lua.";
	detailed = ([[
		uuLua is a library to generate Universally Unique Identifiers, aka. UUIDs, written in pure lua.
	]]):gsub("\t", "");
	homepage = "https://github.com/DarkWiiPlayer/uulua";
	license = "Unlicense";
}
dependencies = {
	"lua >= 5.1";
}
build = {
	type = "builtin";
	modules = {
		uulua = "src/main.lua"
	};
}
