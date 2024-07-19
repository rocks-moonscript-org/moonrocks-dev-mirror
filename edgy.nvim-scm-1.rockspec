local git_ref = '0e8bbab4eba9dab6c237e4a2e146dc0466897be6'
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
  dir = 'edgy.nvim-' .. '0e8bbab4eba9dab6c237e4a2e146dc0466897be6',
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
