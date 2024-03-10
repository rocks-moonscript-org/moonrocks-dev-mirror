local git_ref = '3022dbc9166796b644a841a02de8dd1cc1d311fa'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hrsh7th/cmp-buffer'

rockspec_format = '3.0'
package = 'cmp-buffer'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim-cmp source for buffer words',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hrsh7th/cmp-buffer',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-buffer-' .. '3022dbc9166796b644a841a02de8dd1cc1d311fa',
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
