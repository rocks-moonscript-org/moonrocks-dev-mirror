local git_ref = '5330cc759cc7f67ad6cc885ad509e3d989a5904e'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.snippets'

rockspec_format = '3.0'
package = 'mini.snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Manage and expand snippets. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.snippets-' .. '5330cc759cc7f67ad6cc885ad509e3d989a5904e',
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
