local git_ref = 'dec6573816767eaa9596cabc1593f45a2f7821ee'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'obsidian.nvim-' .. 'dec6573816767eaa9596cabc1593f45a2f7821ee',
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
