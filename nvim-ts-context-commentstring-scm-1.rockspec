local git_ref = '375c2d86cee6674afd75b4f727ce3a80065552f7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/JoosepAlviste/nvim-ts-context-commentstring'

rockspec_format = '3.0'
package = 'nvim-ts-context-commentstring'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim treesitter plugin for setting the commentstring based on the cursor location in a file.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/JoosepAlviste/nvim-ts-context-commentstring',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-ts-context-commentstring-' .. '375c2d86cee6674afd75b4f727ce3a80065552f7',
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
