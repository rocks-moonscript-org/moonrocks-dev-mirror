rockspec_format = '3.0'
package = 'blink-cmp-ssh'
version = 'scm-24'

description = {
  summary = 'SSH configuration completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh/archive/40251afe902a1fa17a11167f8ee2d0d9058a6a9e.zip',
  dir = 'blink-cmp-ssh',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}
