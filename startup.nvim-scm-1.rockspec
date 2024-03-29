local git_ref = 'c6ba324f9eba0c23b675b53af431346aab893268'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/startup-nvim/startup.nvim'

rockspec_format = '3.0'
package = 'startup.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A highly configurable neovim startup screen',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/startup-nvim/startup.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'startup.nvim-' .. 'c6ba324f9eba0c23b675b53af431346aab893268',
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
