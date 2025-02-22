rockspec_format = '3.0'
package = 'wowless-db2'
version = 'scm-0'
source = {
  url = 'git://github.com/wowless/db2',
  tag = 'latest',
}
description = {
  summary = 'wowless db2 parser',
  license = 'MIT',
  homepage = 'https://github.com/wowless/db2',
  issues_url = 'https://github.com/wowless/db2/issues',
  maintainer = 'ferronn@ferronn.dev',
  labels = {
    'wow',
  },
}
dependencies = {
  'vstruct',
}
build = {
  type = 'builtin',
  modules = {
    ['wowless.db2'] = 'db2.lua',
  },
}
