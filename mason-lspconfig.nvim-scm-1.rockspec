local git_ref = '9dfcf2036c223920826140f0151d929a43f9eceb'
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
  dir = 'mason-lspconfig.nvim-' .. '9dfcf2036c223920826140f0151d929a43f9eceb',
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
