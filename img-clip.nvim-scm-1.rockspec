local git_ref = 'b6ddfb97b5600d99afe3452d707444afda658aca'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hakonharnes/img-clip.nvim'

rockspec_format = '3.0'
package = 'img-clip.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Effortlessly embed images into any markup language, like LaTeX, Markdown or Typst.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hakonharnes/img-clip.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'img-clip.nvim-' .. 'b6ddfb97b5600d99afe3452d707444afda658aca',
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
