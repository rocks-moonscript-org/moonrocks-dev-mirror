local git_ref = 'cbaebd92dce84e9ba63cb07d3199e5a19b204c1a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Shatur/neovim-session-manager'

rockspec_format = '3.0'
package = 'neovim-session-manager'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple wrapper around :mksession.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Shatur/neovim-session-manager',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-session-manager-' .. 'cbaebd92dce84e9ba63cb07d3199e5a19b204c1a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
