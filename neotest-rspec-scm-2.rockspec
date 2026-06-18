local git_ref = '7629f8c2837becb72090fbafce58506bb56a00f0'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'neotest-rspec-' .. '7629f8c2837becb72090fbafce58506bb56a00f0',
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
