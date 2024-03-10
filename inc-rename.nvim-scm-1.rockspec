local git_ref = '6f9b5f9cb237e12935144cdc535322b8c93c1b25'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/smjonas/inc-rename.nvim'

rockspec_format = '3.0'
package = 'inc-rename.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Incremental LSP renaming based on Neovim\'s command-preview feature.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/smjonas/inc-rename.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'inc-rename.nvim-' .. '6f9b5f9cb237e12935144cdc535322b8c93c1b25',
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
