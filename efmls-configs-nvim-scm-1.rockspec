local git_ref = 'b23178bef394eac491788f525747acebaf259c05'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'efmls-configs-nvim-' .. 'b23178bef394eac491788f525747acebaf259c05',
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
