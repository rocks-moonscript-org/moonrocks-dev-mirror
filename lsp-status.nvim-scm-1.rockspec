local git_ref = '54f48eb5017632d81d0fd40112065f1d062d0629'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-lua/lsp-status.nvim'

rockspec_format = '3.0'
package = 'lsp-status.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-lua/lsp-status.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-status.nvim-' .. '54f48eb5017632d81d0fd40112065f1d062d0629',
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
