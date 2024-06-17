local git_ref = 'e30b7f2008e52442154b66f7c519bfd2f1e32acb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/numToStr/Comment.nvim'

rockspec_format = '3.0'
package = 'comment.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/numToStr/Comment.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'Comment.nvim-' .. 'e30b7f2008e52442154b66f7c519bfd2f1e32acb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
