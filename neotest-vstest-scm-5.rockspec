local git_ref = '60441fe8b3c8b18d5f02e1305ab69b92ee0fe06a'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/Nsidorenco/neotest-vstest'

rockspec_format = '3.0'
package = 'neotest-vstest'
version = modrev ..'-'.. specrev

description = {
  summary = 'neotest adapter for dotnet using the vstest framework',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Nsidorenco/neotest-vstest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-c_sharp', 'tree-sitter-fsharp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-vstest-' .. '60441fe8b3c8b18d5f02e1305ab69b92ee0fe06a',
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
