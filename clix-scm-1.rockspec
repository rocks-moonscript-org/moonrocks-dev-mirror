package = "clix"
version = "scm-1"
source = {
   url = "hg+https://code.zash.se/clix/"
}
description = {
   summary = "Command line XMPP client",
   detailed = [[
Clix is a small utility to interact with an XMPP server. It can be used to send
messages, presence, and info queries to any XMPP address.]],
   homepage = "https://code.matthewwild.co.uk/clix/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "verse",
   "prosody-libs", -- TODO does it need anything over what verse uses?
}
build = {
	type = "builtin";
	modules = {
		["clix.adhoc"] = "clix/adhoc.lua";
		["clix.archive"] = "clix/archive.lua";
		["clix.avatar"] = "clix/avatar.lua";
		["clix.bounce"] = "clix/bounce.lua";
		["clix.export"] = "clix/export.lua";
		["clix.mirror"] = "clix/mirror.lua";
		["clix.moderate"] = "clix/moderate.lua";
		["clix.ping"] = "clix/ping.lua";
		["clix.presence"] = "clix/presence.lua";
		["clix.publish_atom"] = "clix/publish_atom.lua";
		["clix.raw"] = "clix/raw.lua";
		["clix.receive"] = "clix/receive.lua";
		["clix.roster"] = "clix/roster.lua";
		["clix.send"] = "clix/send.lua";
		["clix.sendfile"] = "clix/sendfile.lua";
		["clix.sendfilecontent"] = "clix/sendfilecontent.lua";
		["clix.vcard"] = "clix/vcard.lua";
		["clix.version"] = "clix/version.lua";
		["clix.watch_pep"] = "clix/watch_pep.lua";
	};
   install = {
      bin = {
         clix = "clix.lua"
      }
   }
}
