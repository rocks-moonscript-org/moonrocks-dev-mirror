local git_ref = 'e73350b07afdd4242a57e2e7c2b7cd38fce31d59'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'remember.nvim-' .. 'e73350b07afdd4242a57e2e7c2b7cd38fce31d59',
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
