local git_ref = '5efba33af0f39942e426340da7bc15d7dec16474'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-treesitter/nvim-treesitter-context'

rockspec_format = '3.0'
package = 'nvim-treesitter-context'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show code context',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter-context',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treesitter-context-' .. '5efba33af0f39942e426340da7bc15d7dec16474',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin', 'queries' } ,
}
