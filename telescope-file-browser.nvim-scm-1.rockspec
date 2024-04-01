local git_ref = '5ee5002373655fd684a4ad0d47a3de876ceacf9a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-file-browser.nvim'

rockspec_format = '3.0'
package = 'telescope-file-browser.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'File Browser extension for telescope.nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-file-browser.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-file-browser.nvim-' .. '5ee5002373655fd684a4ad0d47a3de876ceacf9a',
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
