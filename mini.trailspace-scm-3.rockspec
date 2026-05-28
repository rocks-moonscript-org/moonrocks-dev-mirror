local git_ref = '22653218f1aedc9bf306c8b4e8ec2c8a575f6fae'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.trailspace'

rockspec_format = '3.0'
package = 'mini.trailspace'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Trailspace (highlight and remove). Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.trailspace',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.trailspace-' .. '22653218f1aedc9bf306c8b4e8ec2c8a575f6fae',
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
