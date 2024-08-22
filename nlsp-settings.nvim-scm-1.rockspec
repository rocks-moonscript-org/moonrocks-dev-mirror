local git_ref = '845236bb6c5f7152600908db7e93b91064212f86'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tamago324/nlsp-settings.nvim'

rockspec_format = '3.0'
package = 'nlsp-settings.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for setting Neovim LSP with JSON or YAML files',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tamago324/nlsp-settings.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nlsp-settings.nvim-' .. '845236bb6c5f7152600908db7e93b91064212f86',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
