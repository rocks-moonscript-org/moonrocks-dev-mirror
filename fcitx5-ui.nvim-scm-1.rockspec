local git_ref = '12aa137a218584ca799762b76e9589bafec9eb8e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/black-desk/fcitx5-ui.nvim'

rockspec_format = '3.0'
package = 'fcitx5-ui.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'fcitx5 user interface inside neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/black-desk/fcitx5-ui.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'dbus_proxy' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fcitx5-ui.nvim-' .. '12aa137a218584ca799762b76e9589bafec9eb8e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
