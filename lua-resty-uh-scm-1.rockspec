package = "lua-resty-uh"
version = "scm-1"

description = {
  summary  = "Some modify  for the lua-resty-upstream-healthcheck",
  homepage = "https://github.com/reTsubasa/lua-resty-uh",
  license  = "MIT"
}

source = {
  url    = "git://github.com/reTsubasa/lua-resty-uh",
  branch = "0.0.3"
}


build = {
  type    = "builtin",
  modules = {
    ["resty.uh"]    = "lib/resty/upstream/healthcheck.lua",
  }
}
