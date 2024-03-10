local git_ref = '969e95bd07ec315b5efc53af69c881278c2b74fa'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tamago324/lir.nvim'

rockspec_format = '3.0'
package = 'lir.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim file explorer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tamago324/lir.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lir.nvim-' .. '969e95bd07ec315b5efc53af69c881278c2b74fa',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
