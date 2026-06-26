local git_ref = '343092309be1a16f35bc756cc037256af06173ce'
local modrev = 'scm'
local specrev = '9'

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
  dir = 'mini.animate-' .. '343092309be1a16f35bc756cc037256af06173ce',
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
