local git_ref = '696fc118ea3f649ba17267d1df5656cd2b3c18ba'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/pvz.nvim'

rockspec_format = '3.0'
package = 'pvz.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/pvz.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev

description = {
  summary = 'A plants-vs-zombies user file editor based on neovim.',
  detailed = '',
  labels = { 'lua', 'neovim', 'vim' },
  homepage = 'https://github.com/Freed-Wu/pvz.nvim',
  license = 'GPL-3.0',
}

dependencies = { "lua >= 5.1", 'kaitai-struct', 'platformdirs', 'vim', 'yaml' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pvz.nvim-' .. '696fc118ea3f649ba17267d1df5656cd2b3c18ba',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "builtin",
  copy_directories = { 'plugin' },
  install = {
    bin = {
      pvz = "bin/pvz"
    }
  }
}
