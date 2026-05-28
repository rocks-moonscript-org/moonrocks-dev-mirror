local git_ref = '0c2823e0418f3d9230ff8b201c976e84de1cb401'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'mason-lspconfig.nvim-' .. '0c2823e0418f3d9230ff8b201c976e84de1cb401',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc' } ,
}
