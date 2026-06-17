local git_ref = '82eb633fbaaf0dccebfe8bf3faa4ddeab8dc76f9'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'mini.input-' .. '82eb633fbaaf0dccebfe8bf3faa4ddeab8dc76f9',
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
