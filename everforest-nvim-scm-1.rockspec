local git_ref = '76cd62618afd415215e5bcdd7d2667c0323669bb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/neanias/everforest-nvim'

rockspec_format = '3.0'
package = 'everforest-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Lua port of the Everforest colour scheme',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/neanias/everforest-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'everforest-nvim-' .. '76cd62618afd415215e5bcdd7d2667c0323669bb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
