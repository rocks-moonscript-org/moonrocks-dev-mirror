rockspec_format = "3.0"

package = "rllib"
version = "dev-1"
source = {
  url = "git+ssh://git@github.com/cxinu/rllib.git",
}
description = {
  summary = "This repository implements an efficient, Redis-backed rate limiter for NGINX using OpenResty and Lua.",
  detailed = "This repository implements an efficient, Redis-backed rate limiter for NGINX using OpenResty and Lua. It provides IP-based request throttling using lightweight Lua scripts executed directly in the NGINX request processing phase.",
  homepage = "https://github.com/cxinu/rllib",
  license = "MIT",
}

dependencies = {}
build_dependencies = {}
test_dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["rllib.rllib"] = "lib/rllib/rllib.lua",
  },
  copy_directories = {
    "docs",
  },
}
