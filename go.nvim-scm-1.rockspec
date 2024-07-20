local git_ref = '033344ddfa3cd5cfd55037903264b2bb86691619'
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
  dir = 'go.nvim-' .. '033344ddfa3cd5cfd55037903264b2bb86691619',
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
