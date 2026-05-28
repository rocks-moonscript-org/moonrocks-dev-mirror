local git_ref = 'd76247d6e3ffa222784be5b156770e37c665f67e'
local modrev = 'scm'
local specrev = '10'

local repo_url = 'https://github.com/nvim-mini/mini.nvim'

rockspec_format = '3.0'
package = 'mini.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Library of 35+ independent Lua modules improving overall Neovim (version 0.7 and higher) experience with minimal effort (full suite)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.nvim-' .. 'd76247d6e3ffa222784be5b156770e37c665f67e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
