local git_ref = '51c453d57f8d5156671b42ea57fafa2e1c9fb641'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'neotest-python-' .. '51c453d57f8d5156671b42ea57fafa2e1c9fb641',
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
