package = "immutable-table"
version = "scm-1"
source = {
    url = "git+https://spilt@bitbucket.org/spilt/lua-immutable.git"
}
description = {
   summary = "This is a native Lua library that allows the creation of immutable tables.",
   detailed = "This is a native Lua library that allows the creation of immutable tables.",
   homepage = "https://spilt@bitbucket.org/spilt/lua-immutable.git",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        immutable = {
            "limmutable.c"
        }
    }
}
