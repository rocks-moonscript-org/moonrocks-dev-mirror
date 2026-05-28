rockspec_format = '3.0'
package = 'blink-cmp-tmux'
version = 'scm-29'

description = {
  summary = 'Tmux command completion source for blink.cmp',
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux/archive/b14b487479a3db5777d3a5d61b5035b1b260b640.zip',
  dir = 'blink-cmp-tmux',
}

build = {
  type = 'builtin',
  copy_directories = {  },
}
