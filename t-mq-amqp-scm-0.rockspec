rockspec_format = "3.0"
package = "t-mq-amqp"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-mq-amqp",
}

description = {
  summary = "t.mq.amqp: message queue object interface",
  detailed = [[
t.mq.amqp: message queue object interface
]],
  homepage = "https://github.com/luatoolz/t-mq-amqp",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-mq-amqp/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "cqueues",
}

test_dependencies = {
  "busted",
  "luacheck",
  "lua-resty-uuid",
  "argparse",
  "inspect",
}

test = {
  type = "busted",
}

build = {
  copy_directories = {},
  type = "builtin",
}
