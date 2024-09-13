local git_ref = '9823b3e27deaf9f0152f3bc22f05b54f21e234e8'
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
  dir = 'lsp-zero.nvim-' .. '9823b3e27deaf9f0152f3bc22f05b54f21e234e8',
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
