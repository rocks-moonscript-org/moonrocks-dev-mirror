local git_ref = 'ba8c6a21e46033c09cf738ddf057b8c36e0323b0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/leath-dub/snipe.nvim'

rockspec_format = '3.0'
package = 'snipe.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Efficient targetted menu built for fast buffer navigation',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/leath-dub/snipe.nvim',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'snipe.nvim-' .. 'ba8c6a21e46033c09cf738ddf057b8c36e0323b0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
