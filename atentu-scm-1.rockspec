package = "atentu"
version = "scm-1"
source = {
   url = "git+https://gitlab.com/durrendal/Atentu"
}
description = {
   summary = "A MOTD Generator",
   detailed = [[
Currently supports the following data points:
  - Memory Usage & Total
  - Swap Usage & Total
  - Disc Usage & Totals
  - Load Average
  - Uptime
  - IP Configuration by Interface
  - Hostname
  - CPU Temp

Currently depends heavily on the following tools being installed.
df, ls, ip, awk, grep, tail

If you're on Alpine linux you'll want to use the GNU versions of these tools, the busybox binaries are incomplete.

Long term these depedencies will be removed.
]],
   homepage = "http://lambdacreate/dev/atentu",
   license = "GPL 3.0"
}
dependencies = {
   "lua >= 5.1, < 5.4",
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      atentu = "src/atentu.lua"
   },
}
