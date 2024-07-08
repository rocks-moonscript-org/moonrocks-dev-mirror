local git_ref = '018bc10e28b00e28e239b1fff7c497304f8b1bf5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vuki656/package-info.nvim'

rockspec_format = '3.0'
package = 'package-info.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'All the npm/yarn/pnpm commands I don\'t want to type',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vuki656/package-info.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'package-info.nvim-' .. '018bc10e28b00e28e239b1fff7c497304f8b1bf5',
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
