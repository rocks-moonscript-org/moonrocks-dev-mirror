rockspec_format = "3.0"

package = "flowerpot"
version = "dev-1"

source = {
  url = "git://github.com/the-man-with-a-golden-mind/flowerpot.git",
  branch = "master"
}

description = {
  summary = "FlowerPot HTTP framework (Copas/LuaSocket) with router, middleware and SSE support",
  detailed = [[
FlowerPot is a small HTTP framework built on Copas + LuaSocket, featuring
keep-alive, SSE-safe behavior, router with params/groups, and common middleware.
  ]],
  homepage = "https://github.com/the-man-with-a-golden-mind/flowerpot",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "luasocket",
  "copas",
  "dkjson"
}

build = {
  type = "builtin",
  modules = {
    ["flowerpot"] = "src/flowerpot/init.lua",
    ["flowerpot.request"] = "src/flowerpot/request.lua",
    ["flowerpot.response"] = "src/flowerpot/response.lua",
    ["flowerpot.router"] = "src/flowerpot/router.lua",
    ["flowerpot.middleware"] = "src/flowerpot/middleware.lua",
  }
}

