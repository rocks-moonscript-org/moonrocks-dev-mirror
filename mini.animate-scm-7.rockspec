local git_ref = '668b649d3f9cea3d37f2290b534325a28ed92286'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/nvim-mini/mini.animate'

rockspec_format = '3.0'
package = 'mini.animate'
version = modrev ..'-'.. specrev

description = {
  summary = 'Animate common Neovim actions Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.animate',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.animate-' .. '668b649d3f9cea3d37f2290b534325a28ed92286',
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
