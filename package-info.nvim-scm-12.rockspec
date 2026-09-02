local git_ref = 'b86cf49efc3855dd94afb33304b278f6f122bf1a'
local modrev = 'scm'
local specrev = '12'

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
  dir = 'package-info.nvim-' .. 'b86cf49efc3855dd94afb33304b278f6f122bf1a',
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
