local git_ref = 'cd2500ab74addeed6ac260a008dd649c01d3ba12'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbyuki/one-small-step-for-vimkind'

rockspec_format = '3.0'
package = 'one-small-step-for-vimkind'
version = modrev ..'-'.. specrev

description = {
  summary = 'Debug adapter for Neovim plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jbyuki/one-small-step-for-vimkind',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'one-small-step-for-vimkind-' .. 'cd2500ab74addeed6ac260a008dd649c01d3ba12',
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
