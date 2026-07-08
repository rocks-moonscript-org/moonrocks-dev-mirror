local git_ref = '6a1688315d69e4f8428d529e194714447b0d4e82'
local modrev = 'scm'
local specrev = '8'

local repo_url = 'https://github.com/nvim-mini/mini.jump'

rockspec_format = '3.0'
package = 'mini.jump'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump to next/previous single character. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.jump',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump-' .. '6a1688315d69e4f8428d529e194714447b0d4e82',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
