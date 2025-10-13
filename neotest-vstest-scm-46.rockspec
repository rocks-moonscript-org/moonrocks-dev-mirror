local git_ref = '3a98276e156d65fc1dd078822d301492078f67ed'
local modrev = 'scm'
local specrev = '46'

local repo_url = 'https://github.com/Nsidorenco/neotest-vstest'

rockspec_format = '3.0'
package = 'neotest-vstest'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for dotnet',
  detailed = '',
  labels = { '"neovim"', '"neotest"' } ,
  homepage = 'https://github.com/Nsidorenco/neotest-vstest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-c_sharp', 'tree-sitter-fsharp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-vstest-' .. '3a98276e156d65fc1dd078822d301492078f67ed',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'scripts' } ,
}
