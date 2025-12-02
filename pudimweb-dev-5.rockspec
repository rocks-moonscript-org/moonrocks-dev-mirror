package = "PudimWeb"
version = "dev-5"
source = {
   url = "git://github.com/pessoa736/PudimWeb.git",
   tag = "dev-5"
}
description = {
   summary = "Web framework for Lua 5.4 inspired by React/Next.js",
   detailed = [[
      PudimWeb is a web framework for Lua 5.4 with architecture
      inspired by React/Next.js. Includes file-based routing,
      functional components, hooks (useState, useEffect, useMemo,
      useContext), and support for .lx files via DaviLuaXML.
      
      Features:
      - File-based automatic routing (Next.js style)
      - Functional components with props/children
      - Hooks for state management
      - Virtual DOM with tree diffing
      - Automatic reconciliation
      - Client-side JavaScript generation
      - Production build system
      - API Routes
      - Static file serving
      - CLI for project scaffolding (pudim new, pudim build)
   ]],
   homepage = "https://github.com/pessoa736/PudimWeb",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4",
   "daviluaxml >= 1.2",
   "loglua >= 1.5",
   "luasocket >= 3.1.0"
}
build = {
   type = "builtin",
   modules = {
      PudimWeb = "PudimWeb/init.lua",
      ["PudimWeb.core.builder"] = "PudimWeb/core/builder.lua",
      ["PudimWeb.core.client"] = "PudimWeb/core/client.lua",
      ["PudimWeb.core.components"] = "PudimWeb/core/components.lua",
      ["PudimWeb.core.fileRouter"] = "PudimWeb/core/fileRouter.lua",
      ["PudimWeb.core.hooks"] = "PudimWeb/core/hooks.lua",
      ["PudimWeb.core.reconciler"] = "PudimWeb/core/reconciler.lua",
      ["PudimWeb.core.renderer"] = "PudimWeb/core/renderer.lua",
      ["PudimWeb.core.vdom"] = "PudimWeb/core/vdom.lua",
      ["PudimWeb.html"] = "PudimWeb/html/init.lua",
      ["PudimWeb.http.request"] = "PudimWeb/http/request.lua",
      ["PudimWeb.http.response"] = "PudimWeb/http/response.lua",
      ["PudimWeb.http.server"] = "PudimWeb/http/server.lua",
      ["PudimWeb.middleware.static"] = "PudimWeb/middleware/static.lua",
      ["PudimWeb.router"] = "PudimWeb/router.lua",
      ["PudimWeb.utils.json"] = "PudimWeb/utils/json.lua"
   },
   install = {
      bin = {
         pudim = "bin/pudim"
      }
   }
}
