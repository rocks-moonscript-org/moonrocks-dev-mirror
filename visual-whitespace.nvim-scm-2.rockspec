local git_ref = '02714f141dc0783eb814af6be534bdb0273142ff'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'visual-whitespace.nvim-' .. '02714f141dc0783eb814af6be534bdb0273142ff',
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
