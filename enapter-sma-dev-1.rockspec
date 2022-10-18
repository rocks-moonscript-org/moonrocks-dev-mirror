rockspec_format = "3.0"
package = "enapter-sma"
version = "dev-1"
source = {
  url = "https://github.com/enapter/sma/modbustcp.lua"
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
    ["enapter.sma.modbustcp"] = "enapter/sma/modbustcp.lua"
  }
}
test = {
  type = "busted"
}
