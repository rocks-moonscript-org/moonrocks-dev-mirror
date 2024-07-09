local git_ref = 'e22d8508a0236f274dde39775ee127c85d30c0c0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mcauley-penney/visual-whitespace.nvim'

rockspec_format = '3.0'
package = 'visual-whitespace.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to reveal whitespace characters in visual mode, like VSCode',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mcauley-penney/visual-whitespace.nvim',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'visual-whitespace.nvim-' .. 'e22d8508a0236f274dde39775ee127c85d30c0c0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
