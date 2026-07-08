local git_ref = '203eb35f386b4fc9abcff1518c84d5537d41c80a'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.bracketed'

rockspec_format = '3.0'
package = 'mini.bracketed'
version = modrev ..'-'.. specrev

description = {
  summary = 'Go forward/backward in Neovim with square brackets Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.bracketed',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.bracketed-' .. '203eb35f386b4fc9abcff1518c84d5537d41c80a',
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
