local git_ref = 'b9b494fa7f7bbf2fe0747b47fa290fb7a4eddcc7'
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
  dir = 'tokyonight.nvim-' .. 'b9b494fa7f7bbf2fe0747b47fa290fb7a4eddcc7',
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
