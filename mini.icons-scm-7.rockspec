local git_ref = 'ac38c983aed0a2bd32a65ca3e2348e12e58ca292'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/nvim-mini/mini.icons'

rockspec_format = '3.0'
package = 'mini.icons'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim Icon provider. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.icons',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.icons-' .. 'ac38c983aed0a2bd32a65ca3e2348e12e58ca292',
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
