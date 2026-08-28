local git_ref = 'a18d062ef577938bd67fb706c6c26b6cccc12401'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/jellydn/hurl.nvim'

rockspec_format = '3.0'
package = 'hurl.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Run HTTP requests directly from `.hurl` files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jellydn/hurl.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hurl.nvim-' .. 'a18d062ef577938bd67fb706c6c26b6cccc12401',
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
