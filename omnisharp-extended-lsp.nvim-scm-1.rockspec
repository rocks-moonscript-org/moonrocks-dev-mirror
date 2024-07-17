local git_ref = 'aad7bf06b4ca0de816b919d475a75b30f5f62b61'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Hoffs/omnisharp-extended-lsp.nvim'

rockspec_format = '3.0'
package = 'omnisharp-extended-lsp.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extended LSP handlers for OmniSharp, allows decompilation and looking at source generated documents.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Hoffs/omnisharp-extended-lsp.nvim',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'omnisharp-extended-lsp.nvim-' .. 'aad7bf06b4ca0de816b919d475a75b30f5f62b61',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
