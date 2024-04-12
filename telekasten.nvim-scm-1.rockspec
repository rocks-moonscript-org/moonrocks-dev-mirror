local git_ref = '39c7945d6d209ab921c0ea2b9328d5627e66a6f4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/renerocksai/telekasten.nvim'

rockspec_format = '3.0'
package = 'telekasten.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim (lua) plugin for working with a markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/renerocksai/telekasten.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telekasten.nvim-' .. '39c7945d6d209ab921c0ea2b9328d5627e66a6f4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}
