local git_ref = '54401a62c61d56fe9df106321b158c9048aa5f9b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/windwp/windline.nvim'

rockspec_format = '3.0'
package = 'windline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Animation statusline, floating window statusline. Use lua + luv make some wind',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/windwp/windline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'windline.nvim-' .. '54401a62c61d56fe9df106321b158c9048aa5f9b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
