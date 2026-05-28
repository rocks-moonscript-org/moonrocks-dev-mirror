local git_ref = 'f10fc22a17559b3a7abb400e266db0a1201979e7'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'neotest-dart-' .. 'f10fc22a17559b3a7abb400e266db0a1201979e7',
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
