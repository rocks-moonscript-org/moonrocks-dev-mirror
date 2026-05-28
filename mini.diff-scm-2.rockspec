local git_ref = '0ee0459152b141c0e1b0931eb6949105be4850a9'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.diff'

rockspec_format = '3.0'
package = 'mini.diff'
version = modrev ..'-'.. specrev

description = {
  summary = 'Work with diff hunks in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.diff',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.diff-' .. '0ee0459152b141c0e1b0931eb6949105be4850a9',
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
