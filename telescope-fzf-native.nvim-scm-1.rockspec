local git_ref = 'cf48d4dfce44e0b9a2e19a008d6ec6ea6f01a83b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim'

rockspec_format = '3.0'
package = 'telescope-fzf-native.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'FZF sorter for telescope written in C',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-fzf-native.nvim-' .. 'cf48d4dfce44e0b9a2e19a008d6ec6ea6f01a83b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
