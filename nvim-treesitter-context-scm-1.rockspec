local git_ref = 'df58c81237ffe2b277e14a1692212162a34e2e2a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-treesitter/nvim-treesitter-context'

rockspec_format = '3.0'
package = 'nvim-treesitter-context'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show code context',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter-context',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treesitter-context-' .. 'df58c81237ffe2b277e14a1692212162a34e2e2a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin', 'queries' } ,
}
