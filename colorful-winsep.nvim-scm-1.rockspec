local git_ref = '93a063e25a78c2a50441f3d1ece548465159aa1f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-zh/colorful-winsep.nvim'

rockspec_format = '3.0'
package = 'colorful-winsep.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Make your nvim window separators colorful',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-zh/colorful-winsep.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorful-winsep.nvim-' .. '93a063e25a78c2a50441f3d1ece548465159aa1f',
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
