rockspec_format = "3.0"
package = "rocks-zip"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-zip",
}
description = {
	summary = "A Lua implementation of .zip and .gz file compression and decompression",
	detailed = [[
		Compression and decompression of .zip and .gz using only lzlib or lua-lzib.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-zip", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.5",
	"lzlib >= 0.4.1.53-1",
	"rocks-fs",
	"rocks-fun",
	"rocks-dir",
}
build = {
	type = "builtin",
	modules = {
		["rocks.zip"] = "src/rocks/zip.lua",
	}
}
test_dependencies = {
   "busted-htest",
   "rocks-fs",
   "rocks-sysdetect",
}
test = {
   type = "busted",
   platforms = {
      windows = {
         flags = { "--exclude-tags=ssh,git,unix" }
      },
      unix = {
         flags = { "--exclude-tags=ssh,git" }
      }
   }
}