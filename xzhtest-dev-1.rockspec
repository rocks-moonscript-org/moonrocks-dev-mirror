package = "xzhtest"
version = "dev-1"

source = {
  url = "https://github.com/leafo/lapis-systemd.git"
}

description = {
  summary = "Test xizihang...........",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["lapis.cmd.actions.systemd"] = "lapis/cmd/actions/systemd.lua",
    ["lapis.systemd.journal"] = "lapis/systemd/journal.lua",
    ["lapis.systemd.service"] = "lapis/systemd/service.lua",
  }
}