local git_ref = '0f0d5bc67786c36edc2cb6fb5faa5c09dd1a6e10'
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
  dir = 'one-small-step-for-vimkind-' .. '0f0d5bc67786c36edc2cb6fb5faa5c09dd1a6e10',
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
