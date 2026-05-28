local git_ref = 'f40bcf203812beaf26766ec0bc169a7f429fd730'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/ray-x/lsp_signature.nvim'

rockspec_format = '3.0'
package = 'lsp_signature.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'LSP signature hint as you type',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ray-x/lsp_signature.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp_signature.nvim-' .. 'f40bcf203812beaf26766ec0bc169a7f429fd730',
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
