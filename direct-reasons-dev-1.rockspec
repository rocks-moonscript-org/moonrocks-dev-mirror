package = "direct-reasons"
version = "dev-1"
source = {
    url = "git+https://github.com/code-nuage/direct-reasons"
}
description = {
    homepage = "https://github.com/code-nuage/direct-reasons",
    license = "MIT"
}
dependencies = {
   "luv >= 1.53.0-1",
}
build = {
    type = "builtin",
    modules = {
        ["direct-reasons.reasons"] = "build/direct-reasons/reasons.lua",
    }
}
