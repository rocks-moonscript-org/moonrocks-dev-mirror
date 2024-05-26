local git_ref = '39e2eda76828d88b773cc27a3f61d2ad782c922d'
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
  dir = 'cmp-nvim-lsp-' .. '39e2eda76828d88b773cc27a3f61d2ad782c922d',
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
