local git_ref = '6333509027c8dd66b646e0f70c0ea6b2c283abae'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/dpayne/CodeGPT.nvim'

rockspec_format = '3.0'
package = 'codegpt.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'CodeGPT is a plugin for neovim that provides commands to interact with ChatGPT.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dpayne/CodeGPT.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'CodeGPT.nvim-' .. '6333509027c8dd66b646e0f70c0ea6b2c283abae',
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
