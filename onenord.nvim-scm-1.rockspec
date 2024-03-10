local git_ref = 'ce4aacbaa50b6b44a3e69eee6a3f380e96ccdbd0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rmehri01/onenord.nvim'

rockspec_format = '3.0'
package = 'onenord.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim theme that combines the Nord and Atom One Dark color palettes for a more vibrant programming experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rmehri01/onenord.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'onenord.nvim-' .. 'ce4aacbaa50b6b44a3e69eee6a3f380e96ccdbd0',
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
