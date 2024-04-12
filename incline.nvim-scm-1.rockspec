local git_ref = '3e8edbc457daab8dba087dbba319865a912be7f9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/b0o/incline.nvim'

rockspec_format = '3.0'
package = 'incline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Floating statuslines for Neovim, winbar alternative',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/b0o/incline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'incline.nvim-' .. '3e8edbc457daab8dba087dbba319865a912be7f9',
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
