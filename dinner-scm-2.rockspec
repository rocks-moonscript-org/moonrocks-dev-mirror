package = 'dinner'
version = 'scm-2'
source = {
    url = 'git://github.com/xiaq/dinner.git',
}
description = {
    summary = 'A rock showcasing the new addon functionality.',
    license = 'BSD',
}
build_dependencies = {
    'luarocks-addon-test',
    'luarocks-addon-moonc',
}
addons = {
    'test',
    'moonc'
}
dependencies = {
    'lua >= 5.1',
    'dinner-fork'
}
build = {
    type = 'builtin',
    modules = {
        ["dinner"] = "src/dinner.lua",
        ["dinner.snack"] = "src/snack.lua"
    },
}
test = build.modules
moonc = build.modules
