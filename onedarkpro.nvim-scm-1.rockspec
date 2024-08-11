local git_ref = 'c097acadb6c277be49a92e3d4bd185b2bb2b4d4c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/olimorris/onedarkpro.nvim'

rockspec_format = '3.0'
package = 'onedarkpro.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Atom\'s iconic One Dark theme, for Neovim. Cacheable, fully customisable, Tree-sitter and LSP semantic token support. Comes with variants',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/olimorris/onedarkpro.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'onedarkpro.nvim-' .. 'c097acadb6c277be49a92e3d4bd185b2bb2b4d4c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'colors', 'doc', 'plugin' } ,
}
