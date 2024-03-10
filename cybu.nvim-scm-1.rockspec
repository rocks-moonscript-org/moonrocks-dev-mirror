local git_ref = 'c0866ef6735a85f85d4cf77ed6d9bc92046b5a99'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ghillb/cybu.nvim'

rockspec_format = '3.0'
package = 'cybu.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that offers context when cycling buffers in the form of a customizable notification window.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ghillb/cybu.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cybu.nvim-' .. 'c0866ef6735a85f85d4cf77ed6d9bc92046b5a99',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
