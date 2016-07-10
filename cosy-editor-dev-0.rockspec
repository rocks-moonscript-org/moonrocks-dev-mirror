package = "cosy-editor"
version = "dev-0"
source  = {
  url    = "git+https://github.com/cosyverif/editor.git",
  branch = "dev",
}

description = {
  summary    = "CosyVerif editor",
  detailed   = [[
    Editor of the CosyVerif platform.
  ]],
  homepage   = "http://www.cosyverif.org/",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "argparse",
  "ansicolors",
  "copas",
  "etlua",
  "layeredata",
  "luasocket",
  "lua-cjson",
  "lua-websockets",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.editor"    ] = "src/cosy/editor/init.lua",
    ["cosy.editor.cli"] = "src/cosy/editor/cli.lua",
  },
  install = {
    bin = {
      ["cosy-editor"] = "src/cosy/editor/bin.lua",
    },
  },
}
