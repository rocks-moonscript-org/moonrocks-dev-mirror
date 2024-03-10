local git_ref = '248c2001d0b24e58049eeb6884a79860923cfe13'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Bryley/neoai.nvim'

rockspec_format = '3.0'
package = 'neoai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for intracting with GPT models from OpenAI',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Bryley/neoai.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neoai.nvim-' .. '248c2001d0b24e58049eeb6884a79860923cfe13',
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
