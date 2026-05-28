local git_ref = 'bc3a3ecfd38cbda6752cbe4559aca225085dd90e'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.doc'

rockspec_format = '3.0'
package = 'mini.doc'
version = modrev ..'-'.. specrev

description = {
  summary = 'Generate Neovim help files. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.doc',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.doc-' .. 'bc3a3ecfd38cbda6752cbe4559aca225085dd90e',
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
