package = "oxocarbon.nvim"
version = "scm-1"
source = { url = "git+https://github.com/nyoom-engineering/oxocarbon.nvim" }
rockspec_format = "3.0"
description = {
    summary  = "A dark and light Neovim theme written in fennel, inspired by IBM Carbon.",
    labels   = { "colorscheme", "neovim", "fennel" },
    homepage = "https://github.com/nyoom-engineering/oxocarbon.nvim",
    license  = "MIT",
}
dependencies       = {}
build_dependencies = { "fennel >= 1.6.1" }
build = {
    type = "builtin",
    modules = {
        ["lualine.themes.oxocarbon"] = "lua/lualine/themes/oxocarbon.lua",
        ["oxocarbon.colorutils"] = "lua/oxocarbon/colorutils.lua",
        ["oxocarbon.init"] = "lua/oxocarbon/init.lua"
    }
}
