local git_ref = '7a54af47696a6f53b76bbd0be4df0b1a0b7ed6c1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/benelan/neotest-stenciljs'

rockspec_format = '3.0'
package = 'neotest-stenciljs'
version = modrev ..'-'.. specrev

description = {
  summary = 'A StencilJS adapter for the Neotest framework',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/benelan/neotest-stenciljs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-typescript', 'tree-sitter-javascript' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-stenciljs-' .. '7a54af47696a6f53b76bbd0be4df0b1a0b7ed6c1',
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
