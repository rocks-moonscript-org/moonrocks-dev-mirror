local git_ref = '573b37c2f6ed79a6b3e3c6bd18bb305a72db4dc6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/udayvir-singh/hibiscus.nvim'

rockspec_format = '3.0'
package = 'hibiscus.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🌺 Flavored Fennel Macros for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/udayvir-singh/hibiscus.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hibiscus.nvim-' .. '573b37c2f6ed79a6b3e3c6bd18bb305a72db4dc6',
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
