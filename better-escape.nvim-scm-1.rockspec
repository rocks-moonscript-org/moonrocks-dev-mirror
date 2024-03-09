local git_ref = '7e86edafb8c7e73699e0320f225464a298b96d12'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/max397574/better-escape.nvim'

rockspec_format = '3.0'
package = 'better-escape.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Escape from insert mode without delay when typing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/max397574/better-escape.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'better-escape.nvim-' .. '7e86edafb8c7e73699e0320f225464a298b96d12',
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
