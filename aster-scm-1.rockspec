rockspec_format = "1.1"
package = "aster"
version = "scm-1"
source = {
  url = "git://github.com/axa-dev/aster",
  tag = "latest"
}
description = {
  homepage = "*** please enter a project homepage ***",
  license = "GPL v3"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    ['aster'] = 'src/init.lua'
  }
}
