local git_ref = '06cb5f853535dea529a523e9a0e8884cdf9eba4d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ziontee113/color-picker.nvim'

rockspec_format = '3.0'
package = 'color-picker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A powerful Neovim plugin that lets users choose & modify RGB/HSL/HEX colors. ',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ziontee113/color-picker.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'color-picker.nvim-' .. '06cb5f853535dea529a523e9a0e8884cdf9eba4d',
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
