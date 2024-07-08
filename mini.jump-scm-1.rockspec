local git_ref = '795f26e6640589382c277cffa494bda0a127bef4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.jump'

rockspec_format = '3.0'
package = 'mini.jump'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump to next/previous single character. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.jump',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump-' .. '795f26e6640589382c277cffa494bda0a127bef4',
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
