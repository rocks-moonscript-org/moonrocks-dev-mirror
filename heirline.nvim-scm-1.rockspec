local git_ref = 'c52391dc4428d503f65e6bcb1533e6334f22a136'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rebelot/heirline.nvim'

rockspec_format = '3.0'
package = 'heirline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Heirline.nvim is a no-nonsense Neovim Statusline plugin designed around recursive inheritance to be exceptionally fast and versatile.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rebelot/heirline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'heirline.nvim-' .. 'c52391dc4428d503f65e6bcb1533e6334f22a136',
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
