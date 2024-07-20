local git_ref = 'aec9efebf6f4606a5204d49ffa3ce2eeb7e08a3e'
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
  dir = 'fine-cmdline.nvim-' .. 'aec9efebf6f4606a5204d49ffa3ce2eeb7e08a3e',
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
