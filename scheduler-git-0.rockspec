package = 'scheduler'
version = 'git-0'
source = {
  url = 'https://github.com/ryanplusplus/scheduler.lua/archive/main.zip',
  dir = 'scheduler.lua-main'
}
description = {
  summary = 'Simple coroutine scheduler.',
  homepage = 'https://github.com/ryanplusplus/scheduler.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.2',
  'cffi-lua ~> 0.2'
}
build = {
  type = 'builtin',
  modules = {
    ['Scheduler'] = 'Scheduler.lua'
  }
}
