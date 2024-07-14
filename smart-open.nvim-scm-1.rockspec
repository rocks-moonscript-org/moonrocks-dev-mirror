local git_ref = 'f4e39e9a1b05a6b82b1182a013677acc44b27abb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/danielfalk/smart-open.nvim'

rockspec_format = '3.0'
package = 'smart-open.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fast file-finding',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/danielfalk/smart-open.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim', 'sqlite.lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'smart-open.nvim-' .. 'f4e39e9a1b05a6b82b1182a013677acc44b27abb',
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
