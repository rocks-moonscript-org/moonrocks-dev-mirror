local git_ref = 'acf6d551c9722ab6b526f7f45216f2e30db8d468'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/VonHeikemen/lsp-zero.nvim'

rockspec_format = '3.0'
package = 'lsp-zero.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A starting point to setup some lsp related features in neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/VonHeikemen/lsp-zero.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig', 'cmp-nvim-lsp', 'nvim-cmp', 'luasnip' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-zero.nvim-' .. 'acf6d551c9722ab6b526f7f45216f2e30db8d468',
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
