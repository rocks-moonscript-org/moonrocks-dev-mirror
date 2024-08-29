local git_ref = 'ba0861870b7807974420bd7b21f3aa96951e5d83'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/rest-nvim/rest.nvim'

rockspec_format = '3.0'
package = 'rest.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fast Neovim http client written in Lua',
  detailed = [[
rest.nvim makes use of Lua cURL bindings to make HTTP requests so you don't have to leave Neovim to test your back-end codebase!]],
  labels = { 'curl', 'http-client', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'rest-client' } ,
  homepage = 'https://github.com/rest-nvim/rest.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio', 'mimetypes', 'xml2lua', 'fidget.nvim' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rest.nvim-' .. 'ba0861870b7807974420bd7b21f3aa96951e5d83',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'ftdetect', 'plugin', 'queries' } ,
}
