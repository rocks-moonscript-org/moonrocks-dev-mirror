local git_ref = '1265a1fbfca5979f629ecedb2552f743c70f458f'
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
  dir = 'obsidian.nvim-' .. '1265a1fbfca5979f629ecedb2552f743c70f458f',
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
