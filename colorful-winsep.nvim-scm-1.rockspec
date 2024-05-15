local git_ref = '8a046e9d283ebc1e430d12a8742df3ee4f36825e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-zh/colorful-winsep.nvim'

rockspec_format = '3.0'
package = 'colorful-winsep.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Make your nvim window separators colorful',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-zh/colorful-winsep.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorful-winsep.nvim-' .. '8a046e9d283ebc1e430d12a8742df3ee4f36825e',
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
