local git_ref = 'bb197e51a91a635deb88630813c3bfc284413697'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/max397574/better-escape.nvim'

rockspec_format = '3.0'
package = 'better-escape.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Escape from insert mode without delay when typing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/max397574/better-escape.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'better-escape.nvim-' .. 'bb197e51a91a635deb88630813c3bfc284413697',
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
