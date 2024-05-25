local git_ref = 'b6407868026175fda8b2e3dfdc524a3c60222a23'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/marko-cerovac/material.nvim'

rockspec_format = '3.0'
package = 'material.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Material colorscheme for NeoVim written in Lua with built-in support for native LSP, TreeSitter and many more plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/marko-cerovac/material.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'material.nvim-' .. 'b6407868026175fda8b2e3dfdc524a3c60222a23',
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
