local git_ref = '033a1ff747652dfa27bfbe90e0844b5cb59a741f'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'smart-splits.nvim-' .. '033a1ff747652dfa27bfbe90e0844b5cb59a741f',
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
