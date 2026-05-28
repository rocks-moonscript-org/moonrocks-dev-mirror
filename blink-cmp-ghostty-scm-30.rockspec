rockspec_format = '3.0'
package = 'blink-cmp-ghostty'
version = 'scm-30'

description = {
  summary = 'Ghostty configuration completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty/archive/488b6487ec56afa94aca46cc2d394376d78a9618.zip',
  dir = 'blink-cmp-ghostty',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}
