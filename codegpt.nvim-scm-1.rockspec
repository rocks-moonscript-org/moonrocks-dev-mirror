local git_ref = 'cf647c98dc2e9a8b83b348fa9a111449b5f29764'
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
  dir = 'CodeGPT.nvim-' .. 'cf647c98dc2e9a8b83b348fa9a111449b5f29764',
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
