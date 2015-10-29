package = "love-release"
version = "git-1"
source = {
  url = "git://github.com/MisterDA/love-release.git",
  branch = "luarocks",
}
description = {
  summary = "Make LÖVE games releases easier",
  detailed = [[
  love-release make LÖVE games releases easier.
  It automates LÖVE Game Distribution.
  ]],
  license = "MIT",
  homepage = "https://github.com/MisterDA/love-release",
}
dependencies = {
  "luafilesystem",
  "lua-zip",
  "argparse",
}
build = {
  type = "none",
  install = {
    lua = {
      ["love-release"] = "init.lua",
      ["love-release.project"] = "scripts/project.lua",
      ["love-release.utils"] = "scripts/utils.lua",
    },
    bin = {
      ["love-release"] = "main.lua",
    },
  },
}
