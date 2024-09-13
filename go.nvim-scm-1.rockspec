local git_ref = '1d4abb50327e1f0f80780b0d40c99ece780974da'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'go.nvim-' .. '1d4abb50327e1f0f80780b0d40c99ece780974da',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'ftplugin', 'ftdetect', 'queries', 'syntax' } ,
}
