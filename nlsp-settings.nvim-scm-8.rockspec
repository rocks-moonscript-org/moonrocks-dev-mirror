local git_ref = '1ae83a5be572fd5e8c1547b5c4c582ce1a14c017'
local modrev = 'scm'
local specrev = '8'

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
  dir = 'nlsp-settings.nvim-' .. '1ae83a5be572fd5e8c1547b5c4c582ce1a14c017',
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
