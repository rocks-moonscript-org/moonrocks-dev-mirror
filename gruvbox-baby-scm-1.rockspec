local git_ref = 'bd52e62d8134647090108189e69c8b3cd18bdbbf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/luisiacc/gruvbox-baby'

rockspec_format = '3.0'
package = 'gruvbox-baby'
version = modrev ..'-'.. specrev

description = {
  summary = 'Gruvbox theme for neovim with full TreeSitter support.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/luisiacc/gruvbox-baby',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gruvbox-baby-' .. 'bd52e62d8134647090108189e69c8b3cd18bdbbf',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'colors' } ,
}
