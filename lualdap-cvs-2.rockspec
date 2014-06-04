package = "LuaLDAP"
version = "cvs-2"
source = {
   url = "cvs://:pserver:anonymous:@cvs.luaforge.net:/cvsroot/lualdap",
   cvs_tag = "HEAD",
}
description = {
   summary = "A Lua interface to the OpenLDAP library",
   detailed = [[
      LuaLDAP is a simple interface from Lua to an LDAP client, in
      fact it is a bind to OpenLDAP. It enables a Lua program to
      connect to an LDAP server; execute any operation (search, add,
      compare, delete, modify and rename); retrieve entries and
      references of the search result.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/lualdap/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   OPENLDAP = {
      header = "ldap.h"
   }
}
build = {
   type = "make",
   variables = {
      LUA_VERSION_NUM="501",
   },
   build_variables = {
      LIB_OPTION = "$(LIBFLAG) -L$(OPENLDAP_LIBDIR)",
      CFLAGS = "$(CFLAGS) -I$(LUA_INCDIR) -I$(OPENLDAP_INCDIR)",
   },
   install_variables = {
      LUA_LIBDIR = "$(LIBDIR)",
      LUA_DIR = "$(LUADIR)"
   }
}
