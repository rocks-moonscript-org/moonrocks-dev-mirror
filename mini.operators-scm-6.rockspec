local git_ref = '9e0aa164b097c6cb45e59b9371c9347ac06eb822'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.operators'

rockspec_format = '3.0'
package = 'mini.operators'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Text edit operators. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.operators',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.operators-' .. '9e0aa164b097c6cb45e59b9371c9347ac06eb822',
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
