local git_ref = '1f2e9b07ac7f927f36c17313071cc12759670767'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-frecency.nvim'

rockspec_format = '3.0'
package = 'telescope-frecency.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A telescope.nvim extension that offers intelligent prioritization when selecting files from your editing history.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-frecency.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-frecency.nvim-' .. '1f2e9b07ac7f927f36c17313071cc12759670767',
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
