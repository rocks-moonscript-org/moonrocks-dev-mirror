-- Copyright (c) Facebook, Inc. and its affiliates.
-- This source code is licensed under the MIT license found in the
-- LICENSE file in the root directory of this source tree.


package = 'cparser'
version = 'scm-2'
source  = {
    url    = 'git@github.com:leonbottou/CParser.git',
    tag    = 'release-1.2'
}
description = {
    summary  = 'A compact C preprocessor and declaration parser written in pure Lua',
    homepage = 'https://github.com/facebookresearch/CParser',
    license  = 'MIT',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    install = {
        bin = {
            "lcdecl",
            "lcpp"
        }
    },
    modules = {
        ['cparser'] = 'cparser.lua',
    }
}

-- vim: syntax=lua
