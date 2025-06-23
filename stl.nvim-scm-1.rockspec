rockspec_format = '3.0'
package = "stl.nvim"
version = "scm-1"
source = {
  url = "git+https://github.com/hachibits/stl.nvim"
}
dependencies = {
  'lua == 5.1',
  'plenary.nvim',
}
test_dependencies = {
  "nlua"
}
build = {
  type = "builtin",
  copy_directories = {
    'doc',
    'ftplugin',
    'plugin',
    'scripts',
    'autoload',
    'data',
  },
}
