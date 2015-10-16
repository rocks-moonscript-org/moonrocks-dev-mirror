package = "love-release"
version = "git-0"
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
}
build = {
  type = "none",
  install = {
    lua = {
      "love-release.lua",
    },
    bin = {
      ["love-release"] = "main.lua",
    },
  },
}
