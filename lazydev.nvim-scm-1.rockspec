local git_ref = 'cea5d0fb556cdc35122d9cae772e7e0ed65b4505'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/lazydev.nvim'

rockspec_format = '3.0'
package = 'lazydev.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Faster LuaLS setup for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/lazydev.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lazydev.nvim-' .. 'cea5d0fb556cdc35122d9cae772e7e0ed65b4505',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
