local git_ref = 'c29547c7f144adc3387f2717626422e6b0027a08'
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
  dir = 'smart-splits.nvim-' .. 'c29547c7f144adc3387f2717626422e6b0027a08',
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
