local git_ref = '367c6eb3bff6f401d5308b6e50cb68dcf543920d'
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
  dir = 'inc-rename.nvim-' .. '367c6eb3bff6f401d5308b6e50cb68dcf543920d',
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
