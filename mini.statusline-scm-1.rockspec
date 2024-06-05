local git_ref = '94d5e48415bdf872536e5812475fcf19e09f5c0e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.statusline'

rockspec_format = '3.0'
package = 'mini.statusline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim statusline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.statusline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.statusline-' .. '94d5e48415bdf872536e5812475fcf19e09f5c0e',
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
