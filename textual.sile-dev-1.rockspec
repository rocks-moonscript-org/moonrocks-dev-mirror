rockspec_format = "3.0"
package = "textual.sile"
version = "dev-1"

source = {
    url = "git+https://github.com/jodros/textual.sile.git",
    -- tag = ""
}

description = {
    summary = "Provides essencial commands for books, like headers, epigraphs, etc...",
    homepage = "https://github.com/jodros/textual.sile",
    license = "MIT",
    maintainer = "João Quinaglia"
}

dependencies = {"lua >= 5.1" }

build = {
    type = "builtin",
    modules = {
        ["sile.packages.textual"] = "packages/textual/init.lua",
   },
}

