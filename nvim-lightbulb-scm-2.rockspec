local git_ref = 'b8c08c5f3b1586dfcdd9f34d7d54fe6982e01ac9'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/kosayoda/nvim-lightbulb'

rockspec_format = '3.0'
package = 'nvim-lightbulb'
version = modrev ..'-'.. specrev

description = {
  summary = 'VSCode\'s lightbulb for neovim\'s built-in LSP.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kosayoda/nvim-lightbulb',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lightbulb-' .. 'b8c08c5f3b1586dfcdd9f34d7d54fe6982e01ac9',
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
