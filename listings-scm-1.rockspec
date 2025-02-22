local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/listings'

rockspec_format = '3.0'
package = 'listings'
version = modrev .. '-' .. specrev

description = {
  summary = [[Typeset source code listings using LaTeX]],
  detailed =
  [[The package enables the user to typeset programs (programming code) within LaTeX; the source code is read directly by TeX—no front-end processor is needed. Keywords, comments and strings can be typeset using different styles (default is bold for keywords, italic for comments and no special style for strings). Support for hyperref is provided.

  To use, \usepackage{listings}, identify the language of the object to typeset, using a construct like: \lstset{language=Python}, then use environment lstlisting for inline code. External files may be formatted using \lstinputlisting to process a given file in the form appropriate for the current language. Short (in-line) listings are also available, using either \lstinline|...| or |...| (after defining the | token with the \lstMakeShortInline command).]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'lualatex', 'texrocks', 'latex-base' }

dependencies = { 'xurl', 'hyperref', 'latex-graphics', 'latex-base' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/listings.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
  texrocks install &&
    lualatex --interaction=nonstopmode listings.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/listings/listings.pdf'] = 'listings-devel.pdf',
      ['../tex/latex/listings/listings-acm.prf'] = 'listings-acm.prf',
      ['../tex/latex/listings/listings-bash.prf'] = 'listings-bash.prf',
      ['../tex/latex/listings/listings-fortran.prf'] = 'listings-fortran.prf',
      ['../tex/latex/listings/listings-hansl.prf'] = 'listings-hansl.prf',
      ['../tex/latex/listings/listings-lua.prf'] = 'listings-lua.prf',
      ['../tex/latex/listings/listings-python.prf'] = 'listings-python.prf',
      ['../tex/latex/listings/listings-rexx.prf'] = 'listings-rexx.prf',
      ['../tex/latex/listings/listings.cfg'] = 'listings.cfg',
      ['../tex/latex/listings/listings.sty'] = 'listings.sty',
      ['../tex/latex/listings/lstdoc.sty'] = 'lstdoc.sty',
      ['../tex/latex/listings/lstlang1.sty'] = 'lstlang1.sty',
      ['../tex/latex/listings/lstlang2.sty'] = 'lstlang2.sty',
      ['../tex/latex/listings/lstlang3.sty'] = 'lstlang3.sty',
      ['../tex/latex/listings/lstmisc.sty'] = 'lstmisc.sty',
      ['../tex/latex/listings/lstpatch.sty'] = 'lstpatch.sty',
    }
  }
}
