package = 'dinner'
version = 'scm-1'
source = {
    url = 'file://./src',
}
description = {
    summary = 'A rock with dependencies and build-time dependencies.',
    license = 'BSD',
}
build_dependencies = {
    'luarocks-addon-hello',
    'dinner-pan'
}
addons = {
    'hello'
}
hello = "world"
dependencies = {
    'lua >= 5.1',
    'dinner-fork'
}
build = {
    type = 'builtin',
    modules = {
    },
}
