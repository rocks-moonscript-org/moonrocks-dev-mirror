local git_ref = '1bc17e3e42ea3c46b33c0bbad6a880792692a1b3'
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
  dir = 'harpoon-' .. '1bc17e3e42ea3c46b33c0bbad6a880792692a1b3',
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
