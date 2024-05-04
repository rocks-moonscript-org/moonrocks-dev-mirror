local git_ref = '6cf79dc53794b06a95791a034341f1332e04dd58'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/VonHeikemen/searchbox.nvim'

rockspec_format = '3.0'
package = 'searchbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Start your search from a more comfortable place, say the upper right corner?',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/VonHeikemen/searchbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'searchbox.nvim-' .. '6cf79dc53794b06a95791a034341f1332e04dd58',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
