local git_ref = '896d4515a7193676aacf8a95239882397fdd6b27'
local modrev = 'scm'
local specrev = '26'

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
  dir = 'obsidian.nvim-' .. '896d4515a7193676aacf8a95239882397fdd6b27',
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
