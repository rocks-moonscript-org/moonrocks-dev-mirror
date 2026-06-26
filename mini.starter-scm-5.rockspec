local git_ref = 'a1c26c1c4acd08beb5b0057c663acb6e5f5b7042'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nvim-mini/mini.starter'

rockspec_format = '3.0'
package = 'mini.starter'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim start screen. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.starter',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.starter-' .. 'a1c26c1c4acd08beb5b0057c663acb6e5f5b7042',
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
