package = "yenc"
version = "scm-0"

description = {
    summary  = "Lua yEnc encoder/decoder",
    homepage = "https://github.com/qruf/lua-yenc",
    license  = "ISC",
}

source = {
    url = "git://github.com/qruf/lua-yenc"
}

build = {
    type = "builtin";
    modules = {
        ["yenc"] = {
            sources = { "yenc.c", "vendor/zlib/crc32.c" },
        }
    }
}
