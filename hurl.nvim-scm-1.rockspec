local git_ref = 'c02e58be1e3941c1ee06c8cf15affaf3f740a26e'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'hurl.nvim-' .. 'c02e58be1e3941c1ee06c8cf15affaf3f740a26e',
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
