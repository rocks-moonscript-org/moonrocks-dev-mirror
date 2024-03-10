local git_ref = 'b7404d35d5d3548a82149238289fa71f7f6de4ac'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-lua/popup.nvim'

rockspec_format = '3.0'
package = 'popup.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '[WIP] An implementation of the Popup API from vim in Neovim. Hope to upstream when complete',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-lua/popup.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'popup.nvim-' .. 'b7404d35d5d3548a82149238289fa71f7f6de4ac',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
