rockspec_format = "3.0"
package = "rockszip"
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
	"lua >= 5.1, < 5.4",
	"lzlib",
}
build = {
	type = "builtin",
	modules = {
		["rocks.zip"] = "src/rocks/zip.lua",
	}
}
test_dependencies = {
   "busted-htest",
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