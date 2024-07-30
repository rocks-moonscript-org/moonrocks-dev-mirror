local git_ref = '685f0fac6196862b47025c6b91513af6a406501a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevanmilic/neotest-scala'

rockspec_format = '3.0'
package = 'neotest-scala'
version = modrev ..'-'.. specrev

description = {
  summary = '🧪 Neotest adapter for Scala',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevanmilic/neotest-scala',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-scala' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-scala-' .. '685f0fac6196862b47025c6b91513af6a406501a',
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
