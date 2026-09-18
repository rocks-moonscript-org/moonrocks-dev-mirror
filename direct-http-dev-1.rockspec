package = "direct-http"
version = "dev-1"
source = {
    url = "git+https://github.com/code-nuage/direct-http"
}
description = {
    homepage = "https://github.com/code-nuage/direct-http",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["direct-http.server"] =   "build/direct-http/server.lua",
        ["direct-http.decoder"] =  "build/direct-http/decoder.lua",
        ["direct-http.request"] =  "build/direct-http/request.lua",
        ["direct-http.encoder"] =  "build/direct-http/encoder.lua",
        ["direct-http.response"] = "build/direct-http/response.lua",
        ["direct-http.reasons"] =  "build/direct-http/reasons.lua"
    }
}
