package = 'tant'
version = 'scm-1'
source  = {
    url    = 'git+https://github.com/iusik/tant.git',
    branch = 'master',
}
description = {
    summary  = "Tant Tarantool framework",
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ['tant.init'] = 'tant/init.lua',
    }
}