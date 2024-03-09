local git_ref = '2b9e210e0d1a735e1fa85ec22190115dffd963aa'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/pocco81/true-zen.nvim'

rockspec_format = '3.0'
package = 'true-zen.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Clean and elegant distraction-free writing for NeoVim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pocco81/true-zen.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'true-zen.nvim-' .. '2b9e210e0d1a735e1fa85ec22190115dffd963aa',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
