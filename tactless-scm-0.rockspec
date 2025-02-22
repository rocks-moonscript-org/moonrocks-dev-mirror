rockspec_format = '3.0'
package = 'tactless'
version = 'scm-0'
source = {
  url = 'git://github.com/wowless/lua-tactless',
  tag = 'main',
}
description = {
  summary = 'lua bindings for tactless',
  license = 'MIT',
  homepage = 'https://github.com/wowless/tactless',
  issues_url = 'https://github.com/wowless/tactless/issues',
  maintainer = 'ferronn@ferronn.dev',
  labels = {
    'wow',
  },
}
build = {
  type = 'builtin',
  modules = {
    ['tactless'] = {
      incdirs = 'tactless',
      libraries = {
        'crypto',
        'curl',
        'z',
      },
      sources = {
        'tactless.c',
        'tactless/tactless.c',
      },
    },
  },
}
