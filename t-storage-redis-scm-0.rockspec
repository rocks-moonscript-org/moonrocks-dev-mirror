rockspec_format = "3.0"
package = "t-storage-redis"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-storage-redis",
}

description = {
  summary = "t.storage.redis: redis object interface for `t` lib",
  detailed = [[
t.storage.redis: redis object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-storage-redis",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-storage-redis/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "t-env",
  "redis-lua",
  "lua-resty-redis",
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}

build = {
  copy_directories = {},
  type = "builtin",
}
