local git_ref = 'b7d056dab963b5d3f2c560d92937cb51db61cb5b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Eandrju/cellular-automaton.nvim'

rockspec_format = '3.0'
package = 'cellular-automaton.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lets you execute aesthetically pleasing, cellular automaton animations based on the content of neovim buffer.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Eandrju/cellular-automaton.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter-legacy-api' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cellular-automaton.nvim-' .. 'b7d056dab963b5d3f2c560d92937cb51db61cb5b',
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
