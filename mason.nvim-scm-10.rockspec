local git_ref = '16ba83bfc8a25f52bb545134f5bee082b195c460'
local modrev = 'scm'
local specrev = '10'

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
  dir = 'mason.nvim-' .. '16ba83bfc8a25f52bb545134f5bee082b195c460',
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
