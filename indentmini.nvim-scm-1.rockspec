local git_ref = '0ebb3e20953d109a4867080a158749062fce888c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/indentmini.nvim'

rockspec_format = '3.0'
package = 'indentmini.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A minimal and blazing fast indentline plugin',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/indentmini.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'indentmini.nvim-' .. '0ebb3e20953d109a4867080a158749062fce888c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
