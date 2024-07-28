local git_ref = 'dcaf5ed67a9e28a246e9783319e5aa6c9ea1c584'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest-plenary'

rockspec_format = '3.0'
package = 'neotest-plenary'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plenary.nvim adapter for the Neotest framework',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest-plenary',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-plenary-' .. 'dcaf5ed67a9e28a246e9783319e5aa6c9ea1c584',
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
