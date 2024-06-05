local git_ref = '427712c754bfdccd8da7073576cd8e2586c0fe93'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.hipatterns'

rockspec_format = '3.0'
package = 'mini.hipatterns'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Highlight patterns in text. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.hipatterns',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hipatterns-' .. '427712c754bfdccd8da7073576cd8e2586c0fe93',
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
