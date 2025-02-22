 local git_ref = 'e5ac09db9a2e3efb05d4d96fb87f8d7aa78b4f06'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tellenc.nvim'

rockspec_format = '3.0'
package = 'tellenc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin to detect the encoding of a text file.',
  detailed = '',
  labels = { 'neovim', 'plugin', 'tellenc', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/tellenc.nvim',
  license = 'GPL-3.0'
}

-- https://github.com/Neopallium/LuaNativeObjects/issues/7
-- https://aur.archlinux.org/cgit/aur.git/tree/native-objects-scm-1.rockspec?h=lua-native-objects
build_dependencies = { "luarocks-build-xmake" }

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tellenc.nvim-' .. 'e5ac09db9a2e3efb05d4d96fb87f8d7aa78b4f06',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = {'scripts', 'plugin'},
  install = {
    conf = {
      ['..'] = 'shell.nix'
    },
  },
}