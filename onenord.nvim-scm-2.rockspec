local git_ref = '8b6fe1e0f260ca0b8201ef6a8e2c97e0f38ea35d'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'onenord.nvim-' .. '8b6fe1e0f260ca0b8201ef6a8e2c97e0f38ea35d',
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
