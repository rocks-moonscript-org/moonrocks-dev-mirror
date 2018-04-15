package = "deeptrace"
version = "scm-1"
source = {
	url = "git+https://github.com/raingloom/deeptrace.git"
}
description = {
	summary = "A simple replacement for StackTracePlus, that uses inspect.lua and is easier to analyze",
	homepage = "https://github.com/raingloom/deeptrace",
	license = "MIT",
	maintainer = "github.com/raingloom",
	issues_url = "https://github.com/raingloom/deeptrace/issues",
	labels = { "stacktrace", "debug", "error" },
}
dependencies = {
	"lua >= 5.1",
	"inspect",
}
build = {
	type = "builtin",
	modules = {
		deeptrace = "init.lua",
	},
}
