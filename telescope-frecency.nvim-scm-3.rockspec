local git_ref = 'ab7b69366f46a8749e3c3ec21ba0cbc59a440ddd'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'telescope-frecency.nvim-' .. 'ab7b69366f46a8749e3c3ec21ba0cbc59a440ddd',
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
