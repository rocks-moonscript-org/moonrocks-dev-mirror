local git_ref = '3c3bf4d7d377b27151eb452558e1655f0b7eeeba'
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
  dir = 'vgit.nvim-' .. '3c3bf4d7d377b27151eb452558e1655f0b7eeeba',
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
