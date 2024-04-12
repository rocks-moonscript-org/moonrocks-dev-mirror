local git_ref = '2576637ce46aed84240da33496eee6430b0f0248'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/dmmulroy/tsc.nvim'

rockspec_format = '3.0'
package = 'tsc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin for seamless, asynchronous project-wide TypeScript type-checking using the TypeScript compiler (tsc)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dmmulroy/tsc.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tsc.nvim-' .. '2576637ce46aed84240da33496eee6430b0f0248',
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
