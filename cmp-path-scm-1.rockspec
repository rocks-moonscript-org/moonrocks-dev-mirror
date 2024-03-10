local git_ref = '91ff86cd9c29299a64f968ebb45846c485725f23'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hrsh7th/cmp-path'

rockspec_format = '3.0'
package = 'cmp-path'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim-cmp source for path',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hrsh7th/cmp-path',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-path-' .. '91ff86cd9c29299a64f968ebb45846c485725f23',
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
