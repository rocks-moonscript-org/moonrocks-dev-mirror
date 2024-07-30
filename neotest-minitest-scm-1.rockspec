local git_ref = '0543bf4e997b2c970707cb297e2f74c438eb0653'
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
  dir = 'neotest-minitest-' .. '0543bf4e997b2c970707cb297e2f74c438eb0653',
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
