rockspec_format = '3.0'
package = 'telephone'
version = 'scm-1'

source = {
  url = 'git+https://git.offblast.org/mischief/telephone.git',
  branch = 'main',
}

description = {
  summary = 'io_uring for lua: ops with callbacks, await and tasks',
  detailed = [[
telephone binds liburing. Each io_uring op is a lua object: attach a
callback, await it, or await it from a task that the ring resumes when
the op completes. Memory the kernel reads or writes stays pinned until
its completion arrives.

Runs on lua 5.4 and luajit. puc lua 5.1 gets the core and blocking
awaits. Needs linux 6.6 or later and liburing 2.5 or later.
]],
  homepage = 'https://git.offblast.org/mischief/telephone',
  license = 'ISC',
  labels = { 'io_uring', 'linux', 'async', 'io' },
}

supported_platforms = { 'linux' }

dependencies = {
  'lua >= 5.1',
}

external_dependencies = {
  LIBURING = { header = 'liburing.h', library = 'uring' },
}

build = {
  type = 'builtin',
  modules = {
    ['telephone'] = 'telephone/init.lua',
    ['telephone.task'] = 'telephone/task.lua',
    ['telephone.core'] = {
      sources = { 'src/core.c' },
      defines = { '_GNU_SOURCE' },
      libraries = { 'uring', 'm' },
      incdirs = { '$(LIBURING_INCDIR)' },
      libdirs = { '$(LIBURING_LIBDIR)' },
    },
  },
}

test = {
  type = 'command',
  command = 'lua test/core.lua && lua test/op.lua && lua test/task.lua',
}
