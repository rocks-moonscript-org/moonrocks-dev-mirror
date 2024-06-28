local git_ref = '4fb5abaef2f2e0540fe22d4d74a9841205fff9e4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/uga-rosa/ccc.nvim'

rockspec_format = '3.0'
package = 'ccc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Color picker and highlighter plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/uga-rosa/ccc.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ccc.nvim-' .. '4fb5abaef2f2e0540fe22d4d74a9841205fff9e4',
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
