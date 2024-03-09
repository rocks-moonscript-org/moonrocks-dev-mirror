local git_ref = 'a7d8b424abe0eedf50116c460fbe6dfd5783b1d5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/anuvyklack/pretty-fold.nvim'

rockspec_format = '3.0'
package = 'pretty-fold.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Foldtext customization in Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/anuvyklack/pretty-fold.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pretty-fold.nvim-' .. 'a7d8b424abe0eedf50116c460fbe6dfd5783b1d5',
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
