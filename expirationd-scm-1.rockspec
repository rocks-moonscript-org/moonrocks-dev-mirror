package = "expirationd"
version = "scm-1"
source = {
    url = "git://github.com/wprayudo/expirationd.git",
    branch = "master",
}
description = {
    summary = "Expiration daemon for bee",
    homepage = "https://github.com/wprayudo/expirationd",
    license = "Artistic",
    maintainer = "Eugine Blikh <bigbes@bee.org>"
}
dependencies = {
    "lua >= 5.1" -- actually bee > 1.6
}
build = {
    type = "builtin",
    modules = {
        ["expirationd"] = "expirationd.lua",
    }
}
-- vim: syntax=lua
