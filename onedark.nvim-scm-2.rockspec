local git_ref = 'df4792accde9db0043121f32628bcf8e645d9aea'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/navarasu/onedark.nvim'

rockspec_format = '3.0'
package = 'onedark.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'One dark and light colorscheme for neovim >= 0.5.0 written in lua based on Atom\'s One Dark and Light theme. Additionally, it comes with 5 color variant styles',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/navarasu/onedark.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'onedark.nvim-' .. 'df4792accde9db0043121f32628bcf8e645d9aea',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
