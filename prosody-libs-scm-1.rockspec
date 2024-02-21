package = "prosody-libs"
version = "scm-1"
source = {
   url = "hg+https://hg.prosody.im/trunk/"
}
description = {
   summary = "Lightweight Jabber/XMPP utilities",
	 detailed =[[
Prosody is a modern XMPP communication server. It aims to be easy to set up and
configure, and efficient with system resources. Additionally, for developers it
aims to be easy to extend and give a flexible system on which to rapidly
develop added functionality, or prototype new protocols.

This Rock includes Prosody support libraries and utilities, suitable for use
outside of Prosody.
	 ]],
   homepage = "https://prosody.im/",
   license = "MIT"
}
supported_platforms = {
   "unix",
   "linux",
   "freebsd",
}
dependencies = {
   "lua >= 5.2",
   -- "luadbi",
   -- "luaevent",
   "luaexpat",
   "luafilesystem",
   "luasec",
   "luasocket",
   "luaunbound",
}
build = {
   type = "builtin",
   modules = {
      ["prosody.loader"] = "loader.lua",
      ["prosody.net.adns"] = "net/adns.lua",
      ["prosody.net.connect"] = "net/connect.lua",
      ["prosody.net.cqueues"] = "net/cqueues.lua",
      ["prosody.net.dns"] = "net/dns.lua",
      ["prosody.net.http"] = "net/http.lua",
      ["prosody.net.http.codes"] = "net/http/codes.lua",
      ["prosody.net.http.errors"] = "net/http/errors.lua",
      ["prosody.net.http.files"] = "net/http/files.lua",
      ["prosody.net.http.parser"] = "net/http/parser.lua",
      ["prosody.net.http.server"] = "net/http/server.lua",
      ["prosody.net.resolvers.basic"] = "net/resolvers/basic.lua",
      ["prosody.net.resolvers.chain"] = "net/resolvers/chain.lua",
      ["prosody.net.resolvers.manual"] = "net/resolvers/manual.lua",
      ["prosody.net.resolvers.service"] = "net/resolvers/service.lua",
      ["prosody.net.server"] = "net/server.lua",
      ["prosody.net.server_epoll"] = "net/server_epoll.lua",
      ["prosody.net.server_event"] = "net/server_event.lua",
      ["prosody.net.server_select"] = "net/server_select.lua",
      ["prosody.net.stun"] = "net/stun.lua",
      ["prosody.net.tls_luasec"] = "net/tls_luasec.lua",
      ["prosody.net.unbound"] = "net/unbound.lua",
      ["prosody.net.websocket"] = "net/websocket.lua",
      ["prosody.net.websocket.frames"] = "net/websocket/frames.lua",

      ["prosody.util.adhoc"] = "util/adhoc.lua",
      ["prosody.util.adminstream"] = "util/adminstream.lua",
      ["prosody.util.argparse"] = "util/argparse.lua",
      ["prosody.util.array"] = "util/array.lua",
      ["prosody.util.async"] = "util/async.lua",
      ["prosody.util.bit53"] = "util/bit53.lua",
      ["prosody.util.bitcompat"] = "util/bitcompat.lua",
      ["prosody.util.cache"] = "util/cache.lua",
      ["prosody.util.caps"] = "util/caps.lua",
      ["prosody.util.dataforms"] = "util/dataforms.lua",
      ["prosody.util.datamanager"] = "util/datamanager.lua",
      ["prosody.util.datamapper"] = "util/datamapper.lua",
      ["prosody.util.datetime"] = "util/datetime.lua",
      ["prosody.util.dbuffer"] = "util/dbuffer.lua",
      ["prosody.util.debug"] = "util/debug.lua",
      ["prosody.util.dependencies"] = "util/dependencies.lua",
      ["prosody.util.dns"] = "util/dns.lua",
      ["prosody.util.dnsregistry"] = "util/dnsregistry.lua",
      ["prosody.util.envload"] = "util/envload.lua",
      ["prosody.util.error"] = "util/error.lua",
      ["prosody.util.events"] = "util/events.lua",
      ["prosody.util.filters"] = "util/filters.lua",
      ["prosody.util.format"] = "util/format.lua",
      ["prosody.util.gc"] = "util/gc.lua",
      ["prosody.util.hashring"] = "util/hashring.lua",
      ["prosody.util.helpers"] = "util/helpers.lua",
      ["prosody.util.hex"] = "util/hex.lua",
      ["prosody.util.hmac"] = "util/hmac.lua",
      ["prosody.util.http"] = "util/http.lua",
      ["prosody.util.human.io"] = "util/human/io.lua",
      ["prosody.util.human.units"] = "util/human/units.lua",
      ["prosody.util.id"] = "util/id.lua",
      ["prosody.util.import"] = "util/import.lua",
      ["prosody.util.indexedbheap"] = "util/indexedbheap.lua",
      ["prosody.util.interpolation"] = "util/interpolation.lua",
      ["prosody.util.ip"] = "util/ip.lua",
      ["prosody.util.iterators"] = "util/iterators.lua",
      ["prosody.util.jid"] = "util/jid.lua",
      ["prosody.util.json"] = "util/json.lua",
      ["prosody.util.jsonpointer"] = "util/jsonpointer.lua",
      ["prosody.util.jsonschema"] = "util/jsonschema.lua",
      ["prosody.util.jwt"] = "util/jwt.lua",
      ["prosody.util.logger"] = "util/logger.lua",
      ["prosody.util.mathcompat"] = "util/mathcompat.lua",
      ["prosody.util.mercurial"] = "util/mercurial.lua",
      ["prosody.util.multitable"] = "util/multitable.lua",
      ["prosody.util.openmetrics"] = "util/openmetrics.lua",
      ["prosody.util.openssl"] = "util/openssl.lua",
      ["prosody.util.paseto"] = "util/paseto.lua",
      ["prosody.util.paths"] = "util/paths.lua",
      ["prosody.util.pluginloader"] = "util/pluginloader.lua",
      ["prosody.util.presence"] = "util/presence.lua",
      ["prosody.util.promise"] = "util/promise.lua",
      ["prosody.util.pubsub"] = "util/pubsub.lua",
      ["prosody.util.queue"] = "util/queue.lua",
      ["prosody.util.random"] = "util/random.lua",
      ["prosody.util.rfc6724"] = "util/rfc6724.lua",
      ["prosody.util.roles"] = "util/roles.lua",
      ["prosody.util.rsm"] = "util/rsm.lua",
      ["prosody.util.sasl"] = "util/sasl.lua",
      ["prosody.util.sasl.anonymous"] = "util/sasl/anonymous.lua",
      ["prosody.util.sasl.external"] = "util/sasl/external.lua",
      ["prosody.util.sasl.oauthbearer"] = "util/sasl/oauthbearer.lua",
      ["prosody.util.sasl.plain"] = "util/sasl/plain.lua",
      ["prosody.util.sasl.scram"] = "util/sasl/scram.lua",
      ["prosody.util.serialization"] = "util/serialization.lua",
      ["prosody.util.session"] = "util/session.lua",
      ["prosody.util.set"] = "util/set.lua",
      ["prosody.util.smqueue"] = "util/smqueue.lua",
      ["prosody.util.sql"] = "util/sql.lua",
      ["prosody.util.sqlite3"] = "util/sqlite3.lua",
      ["prosody.util.sslconfig"] = "util/sslconfig.lua",
      ["prosody.util.stanza"] = "util/stanza.lua",
      ["prosody.util.statistics"] = "util/statistics.lua",
      ["prosody.util.statsd"] = "util/statsd.lua",
      ["prosody.util.template"] = "util/template.lua",
      ["prosody.util.termcolours"] = "util/termcolours.lua",
      ["prosody.util.throttle"] = "util/throttle.lua",
      ["prosody.util.timer"] = "util/timer.lua",
      ["prosody.util.uuid"] = "util/uuid.lua",
      ["prosody.util.watchdog"] = "util/watchdog.lua",
      ["prosody.util.x509"] = "util/x509.lua",
      ["prosody.util.xml"] = "util/xml.lua",
      ["prosody.util.xmppstream"] = "util/xmppstream.lua",
      ["prosody.util.xpcall"] = "util/xpcall.lua",
      ["prosody.util.xtemplate"] = "util/xtemplate.lua",
      ["prosody.util.compat"] = {
         sources = "util-src/compat.c"
      },
      ["prosody.util.crand"] = {
         sources = "util-src/crand.c"
      },
      ["prosody.util.crypto"] = {
			sources = "util-src/crypto.c",
         libraries = {
            "crypto"
         },
      },
      ["prosody.util.encodings"] = {
         libraries = {
            "icui18n", "icudata", "icuuc"
         },
         defines = {
            "USE_STRINGPREP_ICU"
         },
         sources = "util-src/encodings.c"
      },
      ["prosody.util.hashes"] = {
         libraries = {
            "crypto"
         },
         sources = "util-src/hashes.c"
      },
      ["prosody.util.net"] = {
         sources = "util-src/net.c"
      },
      ["prosody.util.poll"] = {
         sources = "util-src/poll.c"
      },
      ["prosody.util.pposix"] = {
         sources = "util-src/pposix.c"
      },
      ["prosody.util.ringbuffer"] = {
         sources = "util-src/ringbuffer.c"
      },
      ["prosody.util.signal"] = {
         sources = "util-src/signal.c"
      },
      ["prosody.util.strbitop"] = {
         sources = "util-src/strbitop.c"
      },
      ["prosody.util.struct"] = {
         sources = "util-src/struct.c"
      },
      ["prosody.util.table"] = {
         sources = "util-src/table.c"
      },
      ["prosody.util.time"] = {
         sources = "util-src/time.c"
      },

   },
   platforms = {
      freebsd = {
         modules = {
            ["prosody.util.crand"] = {
               defines = {
                  "WITH_ARC4RANDOM"
               }
            }
         }
      },
      linux = {
         modules = {
            ["prosody.util.crand"] = {
               defines = {
                  "WITH_GETRANDOM"
               }
            }
         }
      }
   },
}
