local git_ref = 'f43e2dff55a07e0a84c01ba4b25ed976a12eea44'
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
  dir = 'mini.trailspace-' .. 'f43e2dff55a07e0a84c01ba4b25ed976a12eea44',
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
