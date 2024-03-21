local git_ref = '5af77f54de1b16c34b23cba810150689a3a90312'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hrsh7th/cmp-nvim-lsp'

rockspec_format = '3.0'
package = 'cmp-nvim-lsp'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim-cmp source for neovim builtin LSP client',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hrsh7th/cmp-nvim-lsp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-nvim-lsp-' .. '5af77f54de1b16c34b23cba810150689a3a90312',
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
