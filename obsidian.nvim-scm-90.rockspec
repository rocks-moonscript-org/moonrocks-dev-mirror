local git_ref = 'afbf3afd7d49455b4bd9e111a12892b02008c4c0'
local modrev = 'scm'
local specrev = '90'

local repo_url = 'https://github.com/obsidian-nvim/obsidian.nvim'

rockspec_format = '3.0'
package = 'obsidian.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Obsidian + Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/obsidian-nvim/obsidian.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'obsidian.nvim-' .. 'afbf3afd7d49455b4bd9e111a12892b02008c4c0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'plugin' } ,
}
