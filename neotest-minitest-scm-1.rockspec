local git_ref = 'bec6bb22e2f74ae56669b0c16ba38237dcd2febf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/zidhuss/neotest-minitest'

rockspec_format = '3.0'
package = 'neotest-minitest'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for Minitest',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/zidhuss/neotest-minitest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-ruby' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-minitest-' .. 'bec6bb22e2f74ae56669b0c16ba38237dcd2febf',
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
