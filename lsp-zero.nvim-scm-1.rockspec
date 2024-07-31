local git_ref = '56db3d5ce5476b183783160e6045f7337ba12b83'
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
  dir = 'lsp-zero.nvim-' .. '56db3d5ce5476b183783160e6045f7337ba12b83',
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
