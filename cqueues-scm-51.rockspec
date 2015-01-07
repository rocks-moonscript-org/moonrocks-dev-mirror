package = "cqueues"
version = "scm-51"
source = {
	url = "git://github.com/wahern/cqueues.git";
}
description = {
	summary = "Continuation Queues: Embeddable asynchronous networking, threading, and notification framework for Lua on Unix.";
	homepage = "http://25thandclement.com/~william/projects/cqueues.html";
	license = "MIT/X11";
}
supported_platforms = {
	"linux";
	"bsd";
	"solaris";
}
dependencies = {
	"lua == 5.1";
}
build = {
	type = "make";
	makefile = "GNUmakefile";

	build_target = "all5.1";
	build_variables = {
		CFLAGS = "$(CFLAGS)";
	};

	install_target = "install5.1";
	install_variables = {
		prefix = "$(PREFIX)";
		lua51cpath = "$(LIBDIR)";
		lua51path = "$(LUADIR)";
		bindir = "$(BINDIR)";
	};
}
