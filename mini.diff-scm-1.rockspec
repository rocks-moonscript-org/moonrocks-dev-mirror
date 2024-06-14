local git_ref = 'faf99c45fc6df1108eaf1da97497f0385c09afbc'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.diff'

rockspec_format = '3.0'
package = 'mini.diff'
version = modrev ..'-'.. specrev

description = {
  summary = 'Work with diff hunks in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.diff',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.diff-' .. 'faf99c45fc6df1108eaf1da97497f0385c09afbc',
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
