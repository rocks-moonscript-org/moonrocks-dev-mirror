package = "luarocks-build-cpp"
version = "scm-0"
source = {
  url = "https://github.com/osch/luarocks-build-cpp/archive/master.zip",
  dir = "luarocks-build-cpp-master",
}
description = {
	summary = "C++ support for built-in build system",
	detailed = "luarocks-build-cpp is a fork of built-in build system for C++ rocks. ",
	homepage = "http://github.com/osch/luarocks-build-cpp",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["luarocks.build.cpp"] = "cpp.lua"
	},
	copy_directories = {}
}

