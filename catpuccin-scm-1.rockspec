local git_ref = '4fd72a9ab64b393c2c22b168508fd244877fec96'
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
  dir = 'nvim-' .. '4fd72a9ab64b393c2c22b168508fd244877fec96',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'autoload', 'colors', 'doc' } ,
}
