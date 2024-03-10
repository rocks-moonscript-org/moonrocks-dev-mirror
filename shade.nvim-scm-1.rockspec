local git_ref = '4286b5abc47d62d0c9ffb22a4f388b7bf2ac2461'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/sunjon/Shade.nvim'

rockspec_format = '3.0'
package = 'shade.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An Nvim lua plugin that dims your inactive windows',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sunjon/Shade.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'Shade.nvim-' .. '4286b5abc47d62d0c9ffb22a4f388b7bf2ac2461',
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
