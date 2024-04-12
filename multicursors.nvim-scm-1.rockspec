local git_ref = 'b959ad0f38881e81e757208c6adfc9e6dc24dfc7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/smoka7/multicursors.nvim'

rockspec_format = '3.0'
package = 'multicursors.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A multi cursor plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/smoka7/multicursors.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'hydra.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'multicursors.nvim-' .. 'b959ad0f38881e81e757208c6adfc9e6dc24dfc7',
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
