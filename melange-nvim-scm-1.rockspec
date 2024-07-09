local git_ref = 'f626d41b9110e6ab853538d8b939979a0f1adfeb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/savq/melange-nvim'

rockspec_format = '3.0'
package = 'melange-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Warm color scheme for Neovim and beyond',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/savq/melange-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'melange-nvim-' .. 'f626d41b9110e6ab853538d8b939979a0f1adfeb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors' } ,
}
