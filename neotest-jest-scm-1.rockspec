local git_ref = '514fd4eae7da15fd409133086bb8e029b65ac43f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest-jest'

rockspec_format = '3.0'
package = 'neotest-jest'
version = modrev ..'-'.. specrev

description = {
  summary = 'A jest adapter for the Neotest framework',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest-jest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest >= 4.0.0', 'plenary.nvim', 'tree-sitter-javascript' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-jest-' .. '514fd4eae7da15fd409133086bb8e029b65ac43f',
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
