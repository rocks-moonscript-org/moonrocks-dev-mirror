local git_ref = '058e83dc009e4dd62f30807054de9cc849699e27'
local modrev = 'scm'
local specrev = '8'

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
  dir = 'nvim-' .. '058e83dc009e4dd62f30807054de9cc849699e27',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'colors', 'doc' } ,
}
