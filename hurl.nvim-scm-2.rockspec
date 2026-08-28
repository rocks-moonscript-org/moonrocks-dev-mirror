local git_ref = '920681a8886df253837eabe9ebc8ad186bcc93b2'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/jellydn/hurl.nvim'

rockspec_format = '3.0'
package = 'hurl.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Run HTTP requests directly from `.hurl` files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jellydn/hurl.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hurl.nvim-' .. '920681a8886df253837eabe9ebc8ad186bcc93b2',
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
