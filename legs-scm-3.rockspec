package = "legs"
version = "scm-3"
source = {
    url = "https://github.com/datashaman/legs",
}
description = {
    summary = "A simple Love2D game engine.",
    homepage = "https://github.com/datashaman/legs",
    license = "MIT",
}
dependencies = {
    "middleclass >= 4.1",
}
build = {
    type = "builtin",
    modules = {
        ['legs.system'] = "src/system.lua",
        ['legs.world'] = "src/world.lua",
    }
}
