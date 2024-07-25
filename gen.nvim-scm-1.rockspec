local git_ref = 'd82f0ad673d3af2f2ca9dddd7fe363d7a30f7c0f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/David-Kunz/gen.nvim'

rockspec_format = '3.0'
package = 'gen.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to generate text using LLMs with customizable prompts.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/David-Kunz/gen.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gen.nvim-' .. 'd82f0ad673d3af2f2ca9dddd7fe363d7a30f7c0f',
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
