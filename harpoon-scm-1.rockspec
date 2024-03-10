local git_ref = 'ccae1b9bec717ae284906b0bf83d720e59d12b91'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ThePrimeagen/harpoon'

rockspec_format = '3.0'
package = 'harpoon'
version = modrev ..'-'.. specrev

description = {
  summary = 'Getting you where you want wit the fewest keystrokes.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ThePrimeagen/harpoon',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'harpoon-' .. 'ccae1b9bec717ae284906b0bf83d720e59d12b91',
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
