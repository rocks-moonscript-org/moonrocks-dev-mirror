local git_ref = '27dfc14dd4fd7a914a81ee59890a15156e5b4225'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.fuzzy'

rockspec_format = '3.0'
package = 'mini.fuzzy'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fuzzy matching for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.fuzzy',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.fuzzy-' .. '27dfc14dd4fd7a914a81ee59890a15156e5b4225',
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
