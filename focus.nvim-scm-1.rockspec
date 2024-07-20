local git_ref = '3841a38df972534567e85840d7ead20d3a26faa6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-focus/focus.nvim'

rockspec_format = '3.0'
package = 'focus.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Auto-Focusing and Auto-Resizing Splits/Windows for Neovim written in Lua. A full suite of window management enhancements. Vim splits on steroids!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-focus/focus.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'focus.nvim-' .. '3841a38df972534567e85840d7ead20d3a26faa6',
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
