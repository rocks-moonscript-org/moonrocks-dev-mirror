package = "table-utils"
version = "dev-1"
rockspec_format = "3.0"
source = {
  url = "git://github.com/mattia-marini/table-utils",
  tag = "vdev-1"
}
description = {
  -- homepage = "*** please enter a project homepage ***",
  -- license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    table_utils = "table_utils.lua",
    -- ["test.format"] = "test/format.lua",
    -- ["test.init"] = "test/init.lua"
  }
}
dependencies = {
  "lua >= 5.1",
}
test_dependencies = {
  "busted >= 2.0.0"
}
test = {
  type = "busted"
}
