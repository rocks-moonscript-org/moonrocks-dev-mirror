local git_ref = 'cfa65d86e21eeb60544d5e823f6db43941322a53'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimtools/none-ls.nvim'

rockspec_format = '3.0'
package = 'none-ls.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'null-ls.nvim reloaded / Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.',
  detailed = '',
  labels = { 'lsp', 'neovim', 'neovim-lsp', 'neovim-plugin' } ,
  homepage = 'https://github.com/nvimtools/none-ls.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'none-ls.nvim-' .. 'cfa65d86e21eeb60544d5e823f6db43941322a53',
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
