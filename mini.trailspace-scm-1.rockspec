local git_ref = '91f2e0c1b0ee7b72189e6f88da03da9d04077051'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.trailspace'

rockspec_format = '3.0'
package = 'mini.trailspace'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Trailspace (highlight and remove). Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.trailspace',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.trailspace-' .. '91f2e0c1b0ee7b72189e6f88da03da9d04077051',
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
