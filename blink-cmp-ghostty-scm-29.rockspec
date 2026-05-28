rockspec_format = '3.0'
package = 'blink-cmp-ghostty'
version = 'scm-29'

description = {
  summary = 'Ghostty configuration completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty/archive/6a935b8a5b08fb439f6852c3698c1a257ddf9515.zip',
  dir = 'blink-cmp-ghostty',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}
