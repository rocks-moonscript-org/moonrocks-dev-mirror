local git_ref = '1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf'
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
  dir = 'lspkind.nvim-' .. '1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf',
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
