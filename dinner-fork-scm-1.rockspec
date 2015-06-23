package = 'dinner-fork'
version = 'scm-1'
source = {
    url = 'file://./src',
}
description = {
    summary = 'A dependency of the "dinner" rock.',
    license = 'BSD',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
    },
}
