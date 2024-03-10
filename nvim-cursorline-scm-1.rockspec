local git_ref = '804f0023692653b2b2368462d67d2a87056947f9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/yamatsum/nvim-cursorline'

rockspec_format = '3.0'
package = 'nvim-cursorline'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for neovim that highlights cursor words and lines',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/yamatsum/nvim-cursorline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-cursorline-' .. '804f0023692653b2b2368462d67d2a87056947f9',
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
