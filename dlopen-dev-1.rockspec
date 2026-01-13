package = "dlopen"
version = "dev-1"
source = {
    url = "git+https://github.com/mah0x211/lua-dlopen.git",
}
description = {
    summary = "Call C functions in shared libraries using libffi for Lua.",
    detailed = [[`dlopen` provides Lua bindings for calling C functions in shared libraries using `dlopen` functions and `libffi`.]],
    homepage = "https://github.com/mah0x211/lua-dlopen",
    maintainer = "Masatoshi Fukunaga",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
external_dependencies = {
    LIBFFI = {
        header = "ffi.h",
        library = "ffi",
    },
}
build = {
    type = "builtin",
    modules = {
        dlopen = {
            sources = {
                "src/dlopen.c",
            },
            libraries = {
                "ffi",
            },
            incdirs = {
                "$(LIBFFI_INCDIR)",
            },
            libdirs = {
                "$(LIBFFI_LIBDIR)",
            },
        },
    },
}
