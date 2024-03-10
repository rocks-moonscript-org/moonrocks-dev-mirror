local git_ref = 'cb4778b8432f1ae86dae4634c0b611cb269a4c2f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mhartington/formatter.nvim'

rockspec_format = '3.0'
package = 'formatter.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A formatter runner for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mhartington/formatter.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'formatter.nvim-' .. 'cb4778b8432f1ae86dae4634c0b611cb269a4c2f',
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
