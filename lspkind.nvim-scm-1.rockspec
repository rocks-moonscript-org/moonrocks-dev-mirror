local git_ref = 'cff4ae321a91ee3473a92ea1a8c637e3a9510aec'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/onsails/lspkind.nvim'

rockspec_format = '3.0'
package = 'lspkind.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Vscode-like pictograms for neovim lsp completion items',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/onsails/lspkind.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lspkind.nvim-' .. 'cff4ae321a91ee3473a92ea1a8c637e3a9510aec',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
