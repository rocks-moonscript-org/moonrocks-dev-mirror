package = "cqueues"
version = "scm-51"
source = {
	url = "git://github.com/wahern/cqueues.git";
}
description = {
	summary = "Continuation Queues: Embeddable asynchronous networking, threading, and notification framework for Lua on Unix.";
	homepage = "http://25thandclement.com/~william/projects/cqueues.html";
	license = "MIT/X11";
	maintainer = "Daurnimator <quae@daurnimator.com>";
}
supported_platforms = {
	"linux";
	"bsd";
	"solaris";
}
dependencies = {
	"lua == 5.1";
}
external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h";
		library = "ssl";
	};
	CRYPTO = {
		header = "openssl/crypto.h";
		library = "crypto";
	};
}
build = {
	type = "make";
	makefile = "GNUmakefile";

	build_target = "all5.1";
	build_variables = {
		CFLAGS = "$(CFLAGS)";
		bindir = "$(LUA_BINDIR)";
		includedir = "$(LUA_INCDIR)";
		libdir = "$(LUA_LIBDIR)";
	};

	install_target = "install5.1";
	install_variables = {
		prefix = "$(PREFIX)";
		lua51cpath = "$(LIBDIR)";
		lua51path = "$(LUADIR)";
		bindir = "$(BINDIR)";
	};
}
