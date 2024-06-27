local git_ref = 'db7c0df6f34a19b5069e9e873f9348a0036b145f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.hues'

rockspec_format = '3.0'
package = 'mini.hues'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Generate configurable color scheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.hues',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hues-' .. 'db7c0df6f34a19b5069e9e873f9348a0036b145f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
