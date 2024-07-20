local git_ref = 'f8c2e0b36b651c85f52ad5c5373ff8b07adc15a7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/pmizio/typescript-tools.nvim'

rockspec_format = '3.0'
package = 'typescript-tools.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'TypeScript integration NeoVim deserves',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pmizio/typescript-tools.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'typescript-tools.nvim-' .. 'f8c2e0b36b651c85f52ad5c5373ff8b07adc15a7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'ftplugin', 'queries' } ,
}
