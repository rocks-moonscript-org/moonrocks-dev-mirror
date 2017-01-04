package = "l"
version = "scm-0"

description= {
	summary = "A lua REPL";
	homepage = "https://github.com/daurnimator/l";
	license = "MIT";
}

dependencies = {
	"lua";
	"cqueues";
}

source = {
	url = "git://github.com/daurnimator/l.git";
}

build = {
	type = "builtin";
	modules = {};
	install = {
		bin = {
			l = "main.lua";
		};
	};
}
