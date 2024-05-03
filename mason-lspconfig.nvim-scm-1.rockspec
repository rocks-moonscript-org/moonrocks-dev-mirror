local git_ref = '273fdde8ac5e51f3a223ba70980e52bbc09d9f6f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/williamboman/mason-lspconfig.nvim'

rockspec_format = '3.0'
package = 'mason-lspconfig.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/williamboman/mason-lspconfig.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'mason.nvim', 'nvim-lspconfig' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mason-lspconfig.nvim-' .. '273fdde8ac5e51f3a223ba70980e52bbc09d9f6f',
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
