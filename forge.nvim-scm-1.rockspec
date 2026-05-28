local git_ref = 'e7dd173bf4dad3b007445d498315d240b0024db0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/forge.nvim'

rockspec_format = '3.0'
package = 'forge.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'forge workflow for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/barrettruth/forge.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'forge.nvim-' .. 'e7dd173bf4dad3b007445d498315d240b0024db0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
