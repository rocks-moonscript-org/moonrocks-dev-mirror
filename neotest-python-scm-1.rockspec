local git_ref = '2e83d2bc00acbcc1fd529dbf0a0e677cabfe6b50'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest-python'

rockspec_format = '3.0'
package = 'neotest-python'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for python. Supports Pytest and unittest test files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest-python',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-python' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-python-' .. '2e83d2bc00acbcc1fd529dbf0a0e677cabfe6b50',
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
