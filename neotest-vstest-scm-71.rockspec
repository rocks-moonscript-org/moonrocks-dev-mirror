local git_ref = 'de30c7978937d07e6d29ab7807a00fad1c61120b'
local modrev = 'scm'
local specrev = '71'

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
  dir = 'neotest-vstest-' .. 'de30c7978937d07e6d29ab7807a00fad1c61120b',
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
