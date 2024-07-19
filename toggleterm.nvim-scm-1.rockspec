local git_ref = '8ed0f52006d3207ec6c94de7db62da840937ef2a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/akinsho/toggleterm.nvim'

rockspec_format = '3.0'
package = 'toggleterm.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim lua plugin to help easily manage multiple terminal windows',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/akinsho/toggleterm.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'toggleterm.nvim-' .. '8ed0f52006d3207ec6c94de7db62da840937ef2a',
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
