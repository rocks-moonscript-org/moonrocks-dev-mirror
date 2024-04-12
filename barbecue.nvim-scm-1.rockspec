local git_ref = 'd38a2a023dfb1073dd0e8fee0c9be08855d3688f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/utilyre/barbecue.nvim'

rockspec_format = '3.0'
package = 'barbecue.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A VS Code like winbar for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/utilyre/barbecue.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-navic', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'barbecue.nvim-' .. 'd38a2a023dfb1073dd0e8fee0c9be08855d3688f',
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
