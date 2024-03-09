local git_ref = '05a9ab28b53f71d1aece421ef32fee2cb857a843'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/saadparwaiz1/cmp_luasnip'

rockspec_format = '3.0'
package = 'cmp_luasnip'
version = modrev ..'-'.. specrev

description = {
  summary = 'luasnip completion source for nvim-cmp',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/saadparwaiz1/cmp_luasnip',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp_luasnip-' .. '05a9ab28b53f71d1aece421ef32fee2cb857a843',
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
