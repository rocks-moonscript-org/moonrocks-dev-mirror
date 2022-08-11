package = "moonspeak"
version = "scm-1"
source = {
    url = "git+https://git.doublefourteen.io/lua/moonspeak.git"
}
description = {
    summary = "LÖVE game localization library",
    homepage = "https://git.doublefourteen.io/lua/moonspeak",
    maintainer = "The DoubleFourteen Code Forge <info@doublefourteen.io>",
    license = "zlib"
}
dependencies = {
    "lua >= 5.2",
    "df-serialize"
}
build = {
    type = "builtin",
    modules = {
        ["moonspeak"] = "init.lua"
    }
}
