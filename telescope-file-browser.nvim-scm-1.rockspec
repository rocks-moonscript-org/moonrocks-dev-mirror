local git_ref = '8839e3f8070dfafa5b0c0e4652700298e7b872c4'
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
  dir = 'telescope-file-browser.nvim-' .. '8839e3f8070dfafa5b0c0e4652700298e7b872c4',
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
