package = "cqueues"
version = "scm-53"
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
	"lua == 5.3";
}
build = {
	type = "make";
	makefile = "GNUmakefile";

	build_target = "all5.3";
	build_variables = {
		CFLAGS = "$(CFLAGS)";
	};

	install_target = "install5.3";
	install_variables = {
		prefix = "$(PREFIX)";
		lua53cpath = "$(LIBDIR)";
		lua53path = "$(LUADIR)";
		bindir = "$(BINDIR)";
	};
}
