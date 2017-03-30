package = 'lunix'
version = 'scm-0'
source = {
	url = 'git+https://github.com/wahern/lunix.git';
}
description = {
	summary = "Lua Unix Module.";
	homepage = "http://25thandclement.com/~william/projects/lunix.html";
	license = "MIT/X11";
}
supported_platforms = {
	"unix";
}
build = {
	type = "builtin";
	modules = {
		["unix"] = {
			sources = { "src/unix.c"; };
			defines = {
				"_REENTRANT";
				"_THREAD_SAFE";
				"_GNU_SOURCE";
			};
			libraries = {
				"m";
			};
		};
	};
	platforms = {
		linux = {
			modules = {
				["unix"] = {
					libraries = {nil;
						"rt";
					};
				};
			};
		};
		osx = {
			modules = {
				["unix"] = {
					defines = {nil, nil, nil;
						"__APPLE_USE_RFC_3542";
					};
				};
			};
		};
	};
}
