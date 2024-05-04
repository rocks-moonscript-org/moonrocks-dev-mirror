local git_ref = 'f388f1981d222967c741fe9927edf9ba5fa3bcbe'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/uga-rosa/ccc.nvim'

rockspec_format = '3.0'
package = 'ccc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Color picker and highlighter plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/uga-rosa/ccc.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ccc.nvim-' .. 'f388f1981d222967c741fe9927edf9ba5fa3bcbe',
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
