local git_ref = '7f5341643107d05a8d7d4fdea00b29af28517380'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimtools/hydra.nvim'

rockspec_format = '3.0'
package = 'hydra.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Create custom submodes and menus',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimtools/hydra.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hydra.nvim-' .. '7f5341643107d05a8d7d4fdea00b29af28517380',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'syntax' } ,
}
