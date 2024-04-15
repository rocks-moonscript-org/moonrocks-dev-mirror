local git_ref = 'b9b9253f562b81d0b365cc644d80f2f97ac23dda'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rktjmp/playtime.nvim'

rockspec_format = '3.0'
package = 'playtime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🃏 At last! A way to play card games on your computer!',
  detailed = '',
  labels = { 'card-games', 'fennel', 'games', 'neovim' } ,
  homepage = 'https://github.com/rktjmp/playtime.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'playtime.nvim-' .. 'b9b9253f562b81d0b365cc644d80f2f97ac23dda',
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
