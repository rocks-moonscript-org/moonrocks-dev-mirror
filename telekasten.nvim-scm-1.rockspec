local git_ref = 'a684d6ebe7026944b0a5323219d5f5364511e5b2'
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
  dir = 'telekasten.nvim-' .. 'a684d6ebe7026944b0a5323219d5f5364511e5b2',
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
