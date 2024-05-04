local git_ref = '95b61c01ea3a4c9e8747731148e905bbcf0ccaee'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/debugloop/telescope-undo.nvim'

rockspec_format = '3.0'
package = 'telescope-undo.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A telescope extension to view and search your undo tree',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/debugloop/telescope-undo.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-undo.nvim-' .. '95b61c01ea3a4c9e8747731148e905bbcf0ccaee',
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
