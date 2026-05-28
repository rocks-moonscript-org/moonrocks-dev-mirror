local git_ref = '7874c8aa76d5471adcb3ebdf9db5f3b5265e9d37'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/sidlatau/neotest-dart'

rockspec_format = '3.0'
package = 'neotest-dart'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for Dart/Flutter.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sidlatau/neotest-dart',
  license = 'UNKNOW'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-dart' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-dart-' .. '7874c8aa76d5471adcb3ebdf9db5f3b5265e9d37',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
