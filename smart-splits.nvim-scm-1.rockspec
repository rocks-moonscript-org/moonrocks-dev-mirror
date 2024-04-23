local git_ref = '95d11bfc83263236431ead7dc017f5ab0ff992ca'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mrjones2014/smart-splits.nvim'

rockspec_format = '3.0'
package = 'smart-splits.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Smart, seamless, directional navigation and resizing of Neovim + terminal multiplexer splits. Supports tmux, Wezterm, and Kitty. Think about splits in terms of "up/down/left/right".',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mrjones2014/smart-splits.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'smart-splits.nvim-' .. '95d11bfc83263236431ead7dc017f5ab0ff992ca',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
