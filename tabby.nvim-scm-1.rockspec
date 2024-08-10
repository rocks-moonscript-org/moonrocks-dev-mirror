local git_ref = '43d61e7418c062c18b67b2136fcc564426f08db2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nanozuki/tabby.nvim'

rockspec_format = '3.0'
package = 'tabby.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A declarative, highly configurable, and neovim style tabline plugin. Use your nvim tabs as a workspace multiplexer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nanozuki/tabby.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabby.nvim-' .. '43d61e7418c062c18b67b2136fcc564426f08db2',
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
