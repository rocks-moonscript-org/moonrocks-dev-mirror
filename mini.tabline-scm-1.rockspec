local git_ref = '9b9f5135a55fc2369ee4e64f8b4c22a4b4c5fc01'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.tabline'

rockspec_format = '3.0'
package = 'mini.tabline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim tabline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.tabline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.tabline-' .. '9b9f5135a55fc2369ee4e64f8b4c22a4b4c5fc01',
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
