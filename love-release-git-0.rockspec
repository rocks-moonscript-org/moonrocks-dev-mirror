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
  "lua >= 5.2",
  "luafilesystem",
  "lua-zip",
  "argparse",
  "luasec",
  "semver",
}
build = {
  type = "none",
  install = {
    lua = {
      ["love-release"] = "init.lua",
      ["love-release.project"] = "scripts/project.lua",
      ["love-release.utils"] = "scripts/utils.lua",
      ["love-release.zip"] = "scripts/zip.lua",
      ["love-release.platforms.love"] = "platforms/love.lua",
      ["love-release.platforms.windows"] = "platforms/windows.lua",
      ["love-release.platforms.macosx"] = "platforms/macosx.lua",
    },
    bin = {
      ["love-release"] = "main.lua",
    },
  },
}
