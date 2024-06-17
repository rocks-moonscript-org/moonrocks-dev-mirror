local git_ref = '5c1b26775f80d6c222705b9b78dc103a14a78b7d'
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
  dir = 'nlsp-settings.nvim-' .. '5c1b26775f80d6c222705b9b78dc103a14a78b7d',
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
