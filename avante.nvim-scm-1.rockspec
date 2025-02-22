local git_ref = 'caa8342508f69bf73e19cfaf02abf3c5acdcf4c8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/yetone/avante.nvim'

rockspec_format = '3.0'
package = 'avante.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use your Neovim like using Cursor AI IDE!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/yetone/avante.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nui.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'avante.nvim-' .. 'caa8342508f69bf73e19cfaf02abf3c5acdcf4c8',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin', 'syntax' } ,
}
