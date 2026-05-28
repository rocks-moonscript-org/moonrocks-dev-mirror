local git_ref = '5dc52088c231f2721f545570fcb541b04802ce6b'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/creativenull/efmls-configs-nvim'

rockspec_format = '3.0'
package = 'efmls-configs-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An unofficial collection of linters and formatters configured for efm-langserver for neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/creativenull/efmls-configs-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'efmls-configs-nvim-' .. '5dc52088c231f2721f545570fcb541b04802ce6b',
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
