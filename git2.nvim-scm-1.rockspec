local git_ref = 'bd01173e86bdd48db7fe218cc7857e892bc5ee4d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/git2.nvim'

rockspec_format = '3.0'
package = 'git2.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '[WIP!!!] Use luagit2 to realize a :Git in neovim',
  detailed = '',
  labels = { 'libgit2', 'lua', 'neovim', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/git2.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'argparse', 'lua-git2' }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git2.nvim-' .. 'bd01173e86bdd48db7fe218cc7857e892bc5ee4d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = {'scripts', 'plugin'},
  install = {
    conf = {
      ['..'] = 'shell.nix'
    },
  },
}
