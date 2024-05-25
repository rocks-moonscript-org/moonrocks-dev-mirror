local git_ref = '0890a3f4e1711d98b5aa78bf40d2c5b81ef3c39f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/epwalsh/obsidian.nvim'

rockspec_format = '3.0'
package = 'obsidian.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Obsidian + Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/epwalsh/obsidian.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'obsidian.nvim-' .. '0890a3f4e1711d98b5aa78bf40d2c5b81ef3c39f',
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
