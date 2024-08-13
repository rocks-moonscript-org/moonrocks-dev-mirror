local git_ref = '1985dab455eb404aed6983ccf7c718824c5f6a3f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lukas-reineke/lsp-format.nvim'

rockspec_format = '3.0'
package = 'lsp-format.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A wrapper around Neovims native LSP formatting.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lukas-reineke/lsp-format.nvim',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-format.nvim-' .. '1985dab455eb404aed6983ccf7c718824c5f6a3f',
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
