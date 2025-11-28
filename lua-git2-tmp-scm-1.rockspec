local git_ref = '424219d026565b1b81bb46065ebc89e2cc2fd880'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/lua-git2-tmp'

rockspec_format = '3.0'
package = 'lua-git2-tmp'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua bindings for libgit2',
  detailed = '',
  labels = { },
  homepage = 'http://libgit2.github.com',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-git2-tmp-' .. '424219d026565b1b81bb46065ebc89e2cc2fd880',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

external_dependencies = {
	GIT2 = {
		header = "git2.h",
		library = "git2",
	}
}
build	= {
	type = "builtin",
	modules = {
		git2 = {
			sources = { "src/pre_generated-git2.nobj.c" },
			libraries = { "git2" },
			incdirs = { "$(GIT2_INCDIR)" },
			libdirs = { "$(GIT2_LIBDIR)" },
		}
	}
}
