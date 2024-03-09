local git_ref = '8649f694d3e76ee10c19255dece6411c29206a54'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/SmiteshP/nvim-navic'

rockspec_format = '3.0'
package = 'nvim-navic'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple winbar/statusline plugin that shows your current code context',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/SmiteshP/nvim-navic',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-navic-' .. '8649f694d3e76ee10c19255dece6411c29206a54',
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
