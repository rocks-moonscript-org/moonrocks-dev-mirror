package = "showkeys"
rockspec_format = "3.0"
version = "dev-1"
source = {
    url = "git+https://github.com/NvChad/showkeys"
}

description = {
    summary = "Eye-candy keys screencaster for Neovim",
    detailed = "Minimal Eye-candy keys screencaster for Neovim 190 ~ LOC",
    homepage = "https://github.com/NvChad/showkeys",
    license = "GPL-3.0"
}

dependencies = { "lua >= 5.1" }
test_dependencies = {}

build = {
    type = "builtin",
    copy_directories = { "plugin" },
}
