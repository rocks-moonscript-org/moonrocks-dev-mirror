local git_ref = '7c95cfa5836508f08ae833a4b31d2ed265560f64'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/cshuaimin/ssr.nvim'

rockspec_format = '3.0'
package = 'ssr.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Treesitter based structural search and replace plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/cshuaimin/ssr.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ssr.nvim-' .. '7c95cfa5836508f08ae833a4b31d2ed265560f64',
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
