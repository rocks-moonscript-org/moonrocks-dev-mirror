local git_ref = '7769b17c2a131108c02b10e9f844e504aa605cc2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvzone/menu'

rockspec_format = '3.0'
package = 'menu'
version = modrev ..'-'.. specrev

description = {
  summary = 'Menu plugin for neovim ( supports nested menus ) made using volt',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvzone/menu',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'volt' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'menu-' .. '7769b17c2a131108c02b10e9f844e504aa605cc2',
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
