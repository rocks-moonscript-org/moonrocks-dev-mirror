local git_ref = 'dd676584145d62b30d7e8dbdd011796a8f0a065f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/VonHeikemen/fine-cmdline.nvim'

rockspec_format = '3.0'
package = 'fine-cmdline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Enter ex-commands in a nice floating input.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/VonHeikemen/fine-cmdline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fine-cmdline.nvim-' .. 'dd676584145d62b30d7e8dbdd011796a8f0a065f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
