local git_ref = '6e51d7da30bd139a6950adf2a47fda6df9fa06d2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-ui-select.nvim'

rockspec_format = '3.0'
package = 'telescope-ui-select.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Overrides vim.ui.select to use telescope\'s picker.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-ui-select.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-ui-select.nvim-' .. '6e51d7da30bd139a6950adf2a47fda6df9fa06d2',
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
