local git_ref = '906029514ef2c551443408d9c3b935daf7ee6af2'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'telescope-frecency.nvim-' .. '906029514ef2c551443408d9c3b935daf7ee6af2',
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
