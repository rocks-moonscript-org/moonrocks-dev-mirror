local git_ref = 'ed77921e3f0bdf9e52cf9fab2e0f4c69ef2a7e04'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/ray-x/go.nvim'

rockspec_format = '3.0'
package = 'go.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A feature-rich Go development plugin, leveraging gopls, treesitter AST, Dap, and various Go tools to enhance the dev experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ray-x/go.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'go.nvim-' .. 'ed77921e3f0bdf9e52cf9fab2e0f4c69ef2a7e04',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftdetect', 'ftplugin', 'queries', 'syntax' } ,
}
