local git_ref = '1afa13e4073f9bf0e30436c99def2ab800c30ca0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/edgy.nvim'

rockspec_format = '3.0'
package = 'edgy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Easily create and manage predefined window layouts, bringing a new edge to your workflow',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/edgy.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'edgy.nvim-' .. '1afa13e4073f9bf0e30436c99def2ab800c30ca0',
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
