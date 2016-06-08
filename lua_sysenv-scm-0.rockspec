package = "lua_sysenv"
version = "scm-0"

source =
{
    url = "git://github.com/cjtallman/lua_sysenv",
    branch = "master",
}

description =
{
    license  = "MIT/X11",
}

supported_platforms =
{
    "windows",
    "win32",
}

dependencies =
{
    "lua >= 5.1, < 5.4"
}

build =
{
    type ="builtin",
    modules =
    {
        ["lua_sysenv"] =
        {
            sources = "src/core.c",
            defines = ([[MODULE_VER="%s"]]):format(version),
        }
    },
}
