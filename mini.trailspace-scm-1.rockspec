local git_ref = '7bc2876acb1a8e7258664cd050f5c0d7e61254c2'
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
  dir = 'mini.trailspace-' .. '7bc2876acb1a8e7258664cd050f5c0d7e61254c2',
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
