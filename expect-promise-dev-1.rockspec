rockspec_format = "3.0"
package = "expect-promise"
version = "dev-1"
description = {
  summary = "expect package plugin for promises",
  homepage = "https://github.com/sveyret/expect-promise",
  license = "MIT",
}
source = {
  url = "git+https://github.com/sveyret/expect-promise"
}
dependencies = {
  "expect",
}
test_dependencies = {
  "busted",
  "lua-ev",
}
build = {
  type = "builtin",
  modules = {
    ["expect-promise"] = "expect-promise.lua",
  },
}
