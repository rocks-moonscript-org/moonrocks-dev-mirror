local git_ref = 'c5e07b8ff54187716334d585db34282e46fa2932'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim'

rockspec_format = '3.0'
package = 'mason-tool-installer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Install and upgrade third party tools automatically',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'mason.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mason-tool-installer.nvim-' .. 'c5e07b8ff54187716334d585db34282e46fa2932',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
