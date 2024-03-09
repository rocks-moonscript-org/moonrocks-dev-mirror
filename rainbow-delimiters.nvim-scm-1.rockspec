local git_ref = 'cfc3f53cfa0fbabd95bd33747288aea24fe45211'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/HiPhish/rainbow-delimiters.nvim'

rockspec_format = '3.0'
package = 'rainbow-delimiters.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Rainbow delimiters for Neovim with Tree-sitter',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/HiPhish/rainbow-delimiters.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rainbow-delimiters.nvim-' .. 'cfc3f53cfa0fbabd95bd33747288aea24fe45211',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin', 'queries' } ,
}
