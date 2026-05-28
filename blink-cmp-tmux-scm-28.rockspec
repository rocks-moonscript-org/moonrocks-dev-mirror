rockspec_format = '3.0'
package = 'blink-cmp-tmux'
version = 'scm-28'

description = {
  summary = 'Tmux command completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux/archive/0c93341a2c3b85bc8aefd270cd09ef906a5ea6d6.zip',
  dir = 'blink-cmp-tmux',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}
