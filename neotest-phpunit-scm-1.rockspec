local git_ref = 'baae8dfa0a3aaacd9f0bb6845d6348f5bcdc48bb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/olimorris/neotest-phpunit'

rockspec_format = '3.0'
package = 'neotest-phpunit'
version = modrev ..'-'.. specrev

description = {
  summary = '🧪 Neotest adapter for PHPUnit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/olimorris/neotest-phpunit',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-php' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-phpunit-' .. 'baae8dfa0a3aaacd9f0bb6845d6348f5bcdc48bb',
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
