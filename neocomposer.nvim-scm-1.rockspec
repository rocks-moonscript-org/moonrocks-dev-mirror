local git_ref = '7ecb04d4a1712a6fd7272c1c9482ea878c144588'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ecthelionvi/NeoComposer.nvim'

rockspec_format = '3.0'
package = 'neocomposer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that simplifies macros, enhancing productivity with harmony.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ecthelionvi/NeoComposer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'NeoComposer.nvim-' .. '7ecb04d4a1712a6fd7272c1c9482ea878c144588',
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
