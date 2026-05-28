local git_ref = '51e407a46ddb15e49727139b5b1ae3650cd6a069'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'omnisharp-extended-lsp.nvim-' .. '51e407a46ddb15e49727139b5b1ae3650cd6a069',
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
