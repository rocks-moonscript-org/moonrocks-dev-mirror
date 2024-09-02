local git_ref = '385a44f133f4145e3a3da1a2a557225dccc3e1f8'
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
  dir = 'clangd_extensions.nvim-' .. '385a44f133f4145e3a3da1a2a557225dccc3e1f8',
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
