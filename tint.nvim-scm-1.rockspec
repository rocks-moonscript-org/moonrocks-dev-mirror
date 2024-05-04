local git_ref = '02bd0527a315a80e4e25bb2dd7b6994fb0daae01'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/levouh/tint.nvim'

rockspec_format = '3.0'
package = 'tint.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Dim inactive windows in Neovim using window-local highlight namespaces.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/levouh/tint.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tint.nvim-' .. '02bd0527a315a80e4e25bb2dd7b6994fb0daae01',
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
