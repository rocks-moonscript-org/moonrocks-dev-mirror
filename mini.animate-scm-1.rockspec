local git_ref = '98e5ec557cb4edd0b13932666efcef125228a470'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.animate'

rockspec_format = '3.0'
package = 'mini.animate'
version = modrev ..'-'.. specrev

description = {
  summary = 'Animate common Neovim actions Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.animate',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.animate-' .. '98e5ec557cb4edd0b13932666efcef125228a470',
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
