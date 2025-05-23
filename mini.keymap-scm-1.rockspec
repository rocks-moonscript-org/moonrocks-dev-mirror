local git_ref = '909d7c491838bfc2cd35be0c7e7c6af60bd4cb9b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.keymap'

rockspec_format = '3.0'
package = 'mini.keymap'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Special key mappings. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.keymap',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.keymap-' .. '909d7c491838bfc2cd35be0c7e7c6af60bd4cb9b',
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
