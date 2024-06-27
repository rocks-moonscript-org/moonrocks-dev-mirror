local git_ref = 'cd55bf6aab3f88c259fa29ea86bbdcb1a325687d'
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
  dir = 'toggleterm.nvim-' .. 'cd55bf6aab3f88c259fa29ea86bbdcb1a325687d',
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
