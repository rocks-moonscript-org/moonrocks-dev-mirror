local git_ref = '860e912895176112868c97b46277f547e149f5e6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/m4xshen/hardtime.nvim'

rockspec_format = '3.0'
package = 'hardtime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin helping you establish good command workflow and habit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/m4xshen/hardtime.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hardtime.nvim-' .. '860e912895176112868c97b46277f547e149f5e6',
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
