local git_ref = '2af3b574b68dc0273c7fb60369f3a48d5a16a857'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/williamboman/mason.nvim'

rockspec_format = '3.0'
package = 'mason.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/williamboman/mason.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mason.nvim-' .. '2af3b574b68dc0273c7fb60369f3a48d5a16a857',
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
