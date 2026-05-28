rockspec_format = "3.0"
package = "shlex-lpeg"
version = "dev-2"

description = {
	summary = "shlex/shellword in lpeg",
	license = "MIT",
	homepage = "https://github.com/phanen/shlex-lpeg",
	maintainer = "https://github.com/phanen",
	labels = {
		"shlex",
		"lpeg",
		"shellword",
		"split",
		"quote",
	},
}

dependencies = {
	"lua>=5.1",
	"lpeg==1.1.0",
}

source = {
	url = "git+https://github.com/phanen/shlex-lpeg.git",
	tag = "3b5133b38f92deb1e04f9208981f8a59bb38c52d",
}

build = {
	type = "builtin",
}
