local git_ref = 'cd97e060654ffc34d86a2db29956df6905f70383'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nacro90/numb.nvim'

rockspec_format = '3.0'
package = 'numb.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Peek lines just when you intend',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nacro90/numb.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'numb.nvim-' .. 'cd97e060654ffc34d86a2db29956df6905f70383',
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
