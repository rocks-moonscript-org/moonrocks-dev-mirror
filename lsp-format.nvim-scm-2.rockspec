local git_ref = 'e2b4ae87545c1aadebcf1dfc1b5dffe28dcf2ffb'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'lsp-format.nvim-' .. 'e2b4ae87545c1aadebcf1dfc1b5dffe28dcf2ffb',
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
