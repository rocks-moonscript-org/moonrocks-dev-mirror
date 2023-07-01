local INSTALL_FILE = "install.lua"

package = "luayue-bin"
version = "dev-2"
source = {
    url = "git+https://github.com/Frityet/luayue",
    branch = "main"
}
description = {
    homepage = "https://github.com/yue/yue",
    license = "LGPLv3",
    detailed = "Binary releases for yue"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}

local env = {
    "LUA=$(LUA)",
    "CURL=$(CURL)",
    "YUE_VERSION=latest",
    "INST_LIBDIR=$(LIBDIR)",
    "WGET=$(WGET)",
    "TAR=$(TAR)",
    "UNZIP=$(UNZIP)",
}

local env_str = ""
for i = 1, #env do env_str = env_str..'"'..(env[i]:gsub("\"", "\\\""))..'" ' end

---@param plat string
---@return { build_command: string, install_command: string }
local function getcmd(plat)
    return {
        build_command = "$(LUA) "..INSTALL_FILE.." build "..plat.." "..env_str,
        install_command = "$(LUA) "..INSTALL_FILE.." install "..plat.." "..env_str
    }
end

build = {
    type = "command",
    platforms = {
        unix = getcmd "linux",
        macosx = getcmd "mac",
        win32 = getcmd "win32",
        mingw32 = getcmd "win32"
    }
}
