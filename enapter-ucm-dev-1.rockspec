rockspec_format = "3.0"
package = "enapter-ucm"
version = "dev-1"
source = {
  url = "https://github.com/enapter/ucm.lua"
}
description = {
  homepage = "http://developers.enapter.com",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.3"
}
test_dependencies = {
  "busted",
  "luacov",
  "inspect"
}
build = {
  type = "builtin",
  modules = {
    ["enapter.ucm.config"] = "enapter/ucm/config.lua"
  }
}
test = {
  type = "busted"
}
