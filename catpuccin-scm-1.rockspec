local git_ref = '045e3499d9ec8d84635fb08877ae44fd33f6a38d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/catppuccin/nvim'

rockspec_format = '3.0'
package = 'catpuccin'
version = modrev ..'-'.. specrev

description = {
  summary = 'Soothing pastel theme for (Neo)vim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/catppuccin/nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-' .. '045e3499d9ec8d84635fb08877ae44fd33f6a38d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
