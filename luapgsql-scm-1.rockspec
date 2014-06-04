package = "luapgsql"
version = "scm-1"
source = {
   url = "git://github.com/mbalmer/luapgsql"
}
description = {
   summary = "A Lua Binding for PostgreSQL",
   detailed = [[A Lua Binding for PostgreSQL]],
   homepage = "http://github.com/mbalmer/luapgsql",
   license = "3-clause BSD"
}
dependencies = {
   "lua ~> 5.1"
}
external_dependencies = {
   POSTGRESQL = { library = "pq" },
   platforms = {
      linux = {
         POSTGRESQL = { header = "postgresql/postgres.h" },
         LIBBSD = { library = "bsd" }
      },
      bsd = {
         POSTGRESQL = { header = "postgresql/server/postgres.h" }
      }
   }
}
build = {
   type = "builtin",
   modules = {
      pgsql = {
         incdirs = { "$(POSTGRESQL_INCDIR)" },
         libdirs = { "$(POSTGRESQL_LIBDIR)" },
         libraries = { "postgresql" },
         sources = "luapgsql.c"
      },
   },
   platforms = {
      linux = {
         modules = {
            pgsql = {
               incdirs = { "$(POSTGRESQL_INCDIR)/postgresql", "$(LIBBSD_INCDIR)" },
               libdirs = { [2] = "$(LIBBSD_LIBDIR)" },
               defines = { "_GNU_SOURCE" },
               libraries = { [2] = "bsd" },
            },
         }
      },
      bsd = {
         modules = {
            pgsql = {
               incdirs = { "$(POSTGRESQL_INCDIR)/postgresql/server" }
            }
         }
      }
   }
}
