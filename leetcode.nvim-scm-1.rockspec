local git_ref = '05d4153787fab5c6163150d2a0acf29cd1ef297f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kawre/leetcode.nvim'

rockspec_format = '3.0'
package = 'leetcode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin enabling you to solve LeetCode problems.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kawre/leetcode.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim', 'nui.nvim', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'leetcode.nvim-' .. '05d4153787fab5c6163150d2a0acf29cd1ef297f',
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
