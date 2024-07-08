local git_ref = 'da4fe0a9e1397ecd9b012c52fb34313fbd3b862f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/twilight.nvim'

rockspec_format = '3.0'
package = 'twilight.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Twilight is a Lua plugin for Neovim 0.5 that dims inactive portions of the code you\'re editing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/twilight.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'twilight.nvim-' .. 'da4fe0a9e1397ecd9b012c52fb34313fbd3b862f',
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
