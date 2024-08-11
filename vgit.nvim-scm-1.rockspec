local git_ref = '9afe79a3ae65594ca483c2e6161690ff9b85123b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tanvirtin/vgit.nvim'

rockspec_format = '3.0'
package = 'vgit.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Visual git plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tanvirtin/vgit.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vgit.nvim-' .. '9afe79a3ae65594ca483c2e6161690ff9b85123b',
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
