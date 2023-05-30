package = "teml"
version = "dev-1"
source = {
    url = "git+https://github.com/UrNightmaree/teml.git"
}
description = {
    summary = "String Templates library for Lua",
    homepage = "https://github.com/UrNightmaree/teml",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["teml"] = "teml.lua"
    }
}
