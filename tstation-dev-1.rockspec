package = "tstation"
version = "dev-1"
source = {
    url = "git://github.com/chris-montero/tstation",
    tag = "v1.0",
}
description = {
    homepage = "https://github.com/chris-montero/tstation",
    license = "MIT",
}
dependencies = {
    "lua ~> 5.1"
}
build = {
    type = "builtin",
    modules = {
        tstation = "tstation.lua"
    }
}
