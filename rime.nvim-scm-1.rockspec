local git_ref = '4d91e23047945ef33e689a1ca1e836a4b52a86d4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/rime.nvim'

rockspec_format = '3.0'
package = 'rime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'ㄓ rime for neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'rime', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/rime.nvim',
  license = 'GPL-3.0'
}

external_dependencies = {
  RIME = {
    header = "rime_api.h",
    library = "rime",
  },
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rime.nvim-' .. '4d91e23047945ef33e689a1ca1e836a4b52a86d4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after' } ,
  modules = {
    rime = {
      sources = {
        "rime.c"
      },

      incdirs = {
        "$(RIME_INCDIR)",
      },

      libdirs = {
        "$(RIME_LIBDIR)",
      },

      libraries = {
        "rime"
      }
    }
  }
}
