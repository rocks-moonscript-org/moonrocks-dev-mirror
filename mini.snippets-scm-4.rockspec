local git_ref = 'c59e203fef0de69b8cb67edb07b4fc10d455bb44'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.snippets'

rockspec_format = '3.0'
package = 'mini.snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Manage and expand snippets. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.snippets-' .. 'c59e203fef0de69b8cb67edb07b4fc10d455bb44',
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
