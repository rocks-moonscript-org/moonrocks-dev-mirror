package = "Vida"
version = "git-1"

source = {
    url = 'git://github.com/nwhitehead/vida.git',
    dir = 'vida'
}

description = {
    summary = "Mix C code into your LuaJIT code seamlessly.",
    detailed = [[
        Vida is a Lua module that allows you to include C code and
        call it right from your Lua code without messing around with
        makefiles, compilers, or any other nonsense. Requires LuaJIT.
    ]],
    homepage = "https://github.com/nwhitehead/vida",
    license = "MIT <http://opensource.org/licenses/MIT>"
}

dependencies = {
    "lua ~> 5.1"
}

build = {
    type = 'builtin',
    modules = {
        vida = "output/vida.lua"
    }
}
