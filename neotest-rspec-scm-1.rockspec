local git_ref = '48573d5882cbe8d8bcd3b735d9ee7705168b1b87'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/olimorris/neotest-rspec'

rockspec_format = '3.0'
package = 'neotest-rspec'
version = modrev ..'-'.. specrev

description = {
  summary = '🧪 Neotest adapter for RSpec. Works in Docker containers too',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/olimorris/neotest-rspec',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-ruby' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-rspec-' .. '48573d5882cbe8d8bcd3b735d9ee7705168b1b87',
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
