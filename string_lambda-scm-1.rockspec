rockspec_format = "3.0"
package = "string_lambda"
version = "scm-1"
source = {
	url = "git+https://github.com/cmotl/lua-string_lambda",
	branch = "main", -- this will be replaced by the release workflow
}
description = {
	summary = "Wrapper around pl.utils.string_lambda for ease of use",
	detailed = [[
		playing samples and sounds.
	]],
	license = "MIT",
	homepage = "https://github.com/cmotl/lua-string_lambda",
	issues_url = "https://github.com/cmotl/lua-string_lambda/issues",
	maintainer = "Christopher Motl",
}
dependencies = {
	"lua >= 5.1, <= 5.4",
	"penlight = 1.14.0",
}

test_dependencies = {
	"busted",
}

build = {
	type = "builtin",
	modules = {
		string_lambda = "lib/string_lambda.lua",
	},
}

test = {
	type = "busted",
	flags = "--verbose",
}
