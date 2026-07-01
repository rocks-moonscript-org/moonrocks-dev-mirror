local git_ref = 'eef185d0ce24e20d08713e216ce965c57c169155'
local modrev = 'scm'
local specrev = '8'

local repo_url = 'https://github.com/nvim-mini/mini.input'

rockspec_format = '3.0'
package = 'mini.input'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Get user input. Part of \'mini.nvim\' suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.input',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.input-' .. 'eef185d0ce24e20d08713e216ce965c57c169155',
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
