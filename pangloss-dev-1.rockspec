package = "pangloss"
version = "dev-1"
source = {
    url = ""
}
description = {
    summary = "Provides support for interlinear glosses with Markdown example lists.",
    detailed = "",
    homepage = "",
    license = "GPL-3.0-or-later"
}
build = {
    type = "builtin",
    modules = {
        pangloss = "src/pangloss.lua"
    }
}
