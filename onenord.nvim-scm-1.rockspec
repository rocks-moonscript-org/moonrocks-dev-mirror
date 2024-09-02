local git_ref = '057d7048e499b4de7cd4edaff94ec1890242a117'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rmehri01/onenord.nvim'

rockspec_format = '3.0'
package = 'onenord.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim theme that combines the Nord and Atom One Dark color palettes for a more vibrant programming experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rmehri01/onenord.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'onenord.nvim-' .. '057d7048e499b4de7cd4edaff94ec1890242a117',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
