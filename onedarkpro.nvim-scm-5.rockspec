local git_ref = '24c806cb85c1f84d9faaff457cf7aa87c685a070'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'onedarkpro.nvim-' .. '24c806cb85c1f84d9faaff457cf7aa87c685a070',
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
