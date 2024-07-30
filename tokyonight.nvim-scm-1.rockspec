local git_ref = 'b0e7c7382a7e8f6456f2a95655983993ffda745e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/tokyonight.nvim'

rockspec_format = '3.0'
package = 'tokyonight.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/tokyonight.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tokyonight.nvim-' .. 'b0e7c7382a7e8f6456f2a95655983993ffda745e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
