local git_ref = 'a8500531c4ed3a207e744a374ea038744a0f93eb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/p00f/clangd_extensions.nvim'

rockspec_format = '3.0'
package = 'clangd_extensions.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Clangd\'s off-spec features for neovim\'s LSP client. Use https://sr.ht/~p00f/clangd_extensions.nvim instead',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/p00f/clangd_extensions.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'clangd_extensions.nvim-' .. 'a8500531c4ed3a207e744a374ea038744a0f93eb',
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
