local git_ref = '1b5176283bcf91d052b5755d9ba6e8ce14dfc95b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vladdoster/remember.nvim'

rockspec_format = '3.0'
package = 'remember.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A port of the Vim plugin vim-lastplace. It uses the same logic as vim-lastplace, but leverages the Neovim Lua API.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vladdoster/remember.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'remember.nvim-' .. '1b5176283bcf91d052b5755d9ba6e8ce14dfc95b',
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
