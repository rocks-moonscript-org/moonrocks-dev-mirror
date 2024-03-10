local git_ref = 'd460067d47948725a6f25b20f31ea8bbfdfe4622'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/smjonas/live-command.nvim'

rockspec_format = '3.0'
package = 'live-command.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Easily create previewable commands in Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/smjonas/live-command.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'live-command.nvim-' .. 'd460067d47948725a6f25b20f31ea8bbfdfe4622',
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
