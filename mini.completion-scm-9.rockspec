local git_ref = '7c486f877f25bb44d5f6c058c9f4582acc8520e3'
local modrev = 'scm'
local specrev = '9'

local repo_url = 'https://github.com/nvim-mini/mini.completion'

rockspec_format = '3.0'
package = 'mini.completion'
version = modrev ..'-'.. specrev

description = {
  summary = 'Completion and signature help for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.completion',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.completion-' .. '7c486f877f25bb44d5f6c058c9f4582acc8520e3',
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
