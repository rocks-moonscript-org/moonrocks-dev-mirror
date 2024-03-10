local git_ref = '1aaf16580a614601a7f7077d9639aeb457dc5559'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-project.nvim'

rockspec_format = '3.0'
package = 'telescope-project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extension for telescope.nvim that allows you to switch between projects.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-project.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-project.nvim-' .. '1aaf16580a614601a7f7077d9639aeb457dc5559',
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
