local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/CTeX-org/ctex-kit'

rockspec_format = '3.0'
package = 'zhnumber'
version = modrev .. '-' .. specrev

description = {
  summary = [[Typeset Chinese representations of numbers]],
  detailed =
  [[The package provides commands to typeset Chinese representations of numbers. The main difference between this package and CJKnumb is that the commands provided are expandable in the ‘proper’ way.]],
  labels = { 'tex', 'latex' },
  homepage = 'http://www.ctex.org/',
  license = 'LPPL-1.3c'
}

dependencies = { 'l3packages', 'l3kernel' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/zhnumber.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
