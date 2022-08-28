package = 'mulua'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/mulua',
    branch = 'master',
}

description = {
    summary = 'A practical mutation testing tool for Lua',
    homepage = 'https://github.com/ligurio/mulua',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'ISC',
}

dependencies = {
    'argparse >= 0.6.0',
    'lua-parser >= 1.0.2',
    'lua >= 5.1',
}

--[[
build = {
    type = 'make',
    -- Nothing to build.
    build_pass = false,
    variables = {
        LUADIR='$(LUADIR)',
    },
    copy_directories = {
    },
}
]]

build = {
   type = "builtin",
   modules = {
      mulua = "mulua/init.lua",
      ["mulua.checks"] = "mulua/checks.lua",
      ["mulua.codegen"] = "mulua/codegen.lua",
      ["mulua.diff_match_patch"] = "mulua/diff_match_patch.lua",
      ["mulua.main"] = "mulua/main.lua",
      ["mulua.minimize"] = "mulua/minimize.lua",
      ["mulua.mutate"] = "mulua/mutate.lua",
      ["mulua.parse"] = "mulua/parse.lua",
   },
   install = {
      bin = {
         mulua = "bin/mulua"
      }
   }
}
