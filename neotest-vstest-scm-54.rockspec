local git_ref = 'a2d8ba7ae4cf96cc3a0cb999d12e287fef4ee9e2'
local modrev = 'scm'
local specrev = '54'

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
  dir = 'neotest-vstest-' .. 'a2d8ba7ae4cf96cc3a0cb999d12e287fef4ee9e2',
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
