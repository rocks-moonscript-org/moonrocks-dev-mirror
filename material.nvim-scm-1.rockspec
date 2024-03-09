local git_ref = '1804e517ceb0fce958a9fabaa94c9a6e09d54b8f'
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
  dir = 'material.nvim-' .. '1804e517ceb0fce958a9fabaa94c9a6e09d54b8f',
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
