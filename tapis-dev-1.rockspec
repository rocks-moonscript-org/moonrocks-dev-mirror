package = "tapis"
version = "dev-1"
source = {
   url = "git+ssh://git@git.woa.com/tgalib/openresty/tapis.git"
}
description = {
   detailed = "A web framework for Lua/[MoonScript][1] supporting [OpenResty](https://openresty.org/en/) or [http.server](https://github.com/daurnimator/lua-http)",
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}

dependencies = {
	"lua",

	"ansicolors",
	"date",
	"etlua",
	"loadkit",
	"lpeg",
	"lua-cjson",
	"luaossl",
	"luafilesystem",
	"luasocket",
	"pgmoon",
}

build = {
   type = "builtin",
   modules = {
      example = "example.lua",
      lint_config = "lint_config.lua",
      ["spec_cqueues.s1.app"] = "spec_cqueues/s1/app.lua",
      ["spec_mysql.models"] = "spec_mysql/models.lua",
      ["spec_openresty.s1.app"] = "spec_openresty/s1/app.lua",
      ["spec_openresty.s2.app"] = "spec_openresty/s2/app.lua",
      ["spec_openresty.s2.config"] = "spec_openresty/s2/config.lua",
      ["tapis.application"] = "tapis/application.lua",
      ["tapis.cache"] = "tapis/cache.lua",
      ["tapis.cmd.actions"] = "tapis/cmd/actions.lua",
      ["tapis.cmd.attached_server"] = "tapis/cmd/attached_server.lua",
      ["tapis.cmd.cqueues"] = "tapis/cmd/cqueues.lua",
      ["tapis.cmd.cqueues.actions"] = "tapis/cmd/cqueues/actions.lua",
      ["tapis.cmd.cqueues.attached_server"] = "tapis/cmd/cqueues/attached_server.lua",
      ["tapis.cmd.cqueues.templates.config"] = "tapis/cmd/cqueues/templates/config.lua",
      ["tapis.cmd.nginx"] = "tapis/cmd/nginx.lua",
      ["tapis.cmd.nginx.actions"] = "tapis/cmd/nginx/actions.lua",
      ["tapis.cmd.nginx.attached_server"] = "tapis/cmd/nginx/attached_server.lua",
      ["tapis.cmd.nginx.config"] = "tapis/cmd/nginx/config.lua",
      ["tapis.cmd.nginx.templates.config"] = "tapis/cmd/nginx/templates/config.lua",
      ["tapis.cmd.nginx.templates.config_etlua"] = "tapis/cmd/nginx/templates/config_etlua.lua",
      ["tapis.cmd.nginx.templates.mime_types"] = "tapis/cmd/nginx/templates/mime_types.lua",
      ["tapis.cmd.path"] = "tapis/cmd/path.lua",
      ["tapis.cmd.templates.app"] = "tapis/cmd/templates/app.lua",
      ["tapis.cmd.templates.app_lua"] = "tapis/cmd/templates/app_lua.lua",
      ["tapis.cmd.templates.flow"] = "tapis/cmd/templates/flow.lua",
      ["tapis.cmd.templates.gitignore"] = "tapis/cmd/templates/gitignore.lua",
      ["tapis.cmd.templates.model"] = "tapis/cmd/templates/model.lua",
      ["tapis.cmd.templates.models"] = "tapis/cmd/templates/models.lua",
      ["tapis.cmd.templates.models_lua"] = "tapis/cmd/templates/models_lua.lua",
      ["tapis.cmd.templates.spec"] = "tapis/cmd/templates/spec.lua",
      ["tapis.cmd.templates.tup"] = "tapis/cmd/templates/tup.lua",
      ["tapis.cmd.util"] = "tapis/cmd/util.lua",
      ["tapis.config"] = "tapis/config.lua",
      ["tapis.cqueues"] = "tapis/cqueues.lua",
      ["tapis.csrf"] = "tapis/csrf.lua",
      ["tapis.db"] = "tapis/db.lua",
      ["tapis.db.base"] = "tapis/db/base.lua",
      ["tapis.db.base_model"] = "tapis/db/base_model.lua",
      ["tapis.db.migrations"] = "tapis/db/migrations.lua",
      ["tapis.db.model"] = "tapis/db/model.lua",
      ["tapis.db.model.relations"] = "tapis/db/model/relations.lua",
      ["tapis.db.mysql"] = "tapis/db/mysql.lua",
      ["tapis.db.mysql.model"] = "tapis/db/mysql/model.lua",
      ["tapis.db.mysql.schema"] = "tapis/db/mysql/schema.lua",
      ["tapis.db.pagination"] = "tapis/db/pagination.lua",
      ["tapis.db.postgres"] = "tapis/db/postgres.lua",
      ["tapis.db.postgres.model"] = "tapis/db/postgres/model.lua",
      ["tapis.db.postgres.schema"] = "tapis/db/postgres/schema.lua",
      ["tapis.db.schema"] = "tapis/db/schema.lua",
      ["tapis.environment"] = "tapis/environment.lua",
      ["tapis.etlua"] = "tapis/etlua.lua",
      ["tapis.features.etlua"] = "tapis/features/etlua.lua",
      ["tapis.flow"] = "tapis/flow.lua",
      ["tapis.html"] = "tapis/html.lua",
      ["tapis.http"] = "tapis/http.lua",
      ["tapis.init"] = "tapis/init.lua",
      ["tapis.logging"] = "tapis/logging.lua",
      ["tapis.lua"] = "tapis/lua.lua",
      ["tapis.moonscript.widget_optimizer"] = "tapis/moonscript/widget_optimizer.lua",
      ["tapis.nginx"] = "tapis/nginx.lua",
      ["tapis.nginx.cache"] = "tapis/nginx/cache.lua",
      ["tapis.nginx.context"] = "tapis/nginx/context.lua",
      ["tapis.nginx.http"] = "tapis/nginx/http.lua",
      ["tapis.nginx.postgres"] = "tapis/nginx/postgres.lua",
      ["tapis.request"] = "tapis/request.lua",
      ["tapis.router"] = "tapis/router.lua",
      ["tapis.server"] = "tapis/server.lua",
      ["tapis.session"] = "tapis/session.lua",
      ["tapis.spec"] = "tapis/spec.lua",
      ["tapis.spec.db"] = "tapis/spec/db.lua",
      ["tapis.spec.request"] = "tapis/spec/request.lua",
      ["tapis.spec.server"] = "tapis/spec/server.lua",
      ["tapis.spec.shared"] = "tapis/spec/shared.lua",
      ["tapis.spec.stack"] = "tapis/spec/stack.lua",
      ["tapis.time"] = "tapis/time.lua",
      ["tapis.util"] = "tapis/util.lua",
      ["tapis.util.encoding"] = "tapis/util/encoding.lua",
      ["tapis.util.fenv"] = "tapis/util/fenv.lua",
      ["tapis.util.functions"] = "tapis/util/functions.lua",
      ["tapis.util.utf8"] = "tapis/util/utf8.lua",
      ["tapis.validate"] = "tapis/validate.lua",
      ["tapis.version"] = "tapis/version.lua",
      ["tapis.views.error"] = "tapis/views/error.lua",
      ["tapis.views.layout"] = "tapis/views/layout.lua"
   },
   copy_directories = {
      "docs"
   },
   install = {
      bin = {
         "bin/tapis"
      }
   }
}
