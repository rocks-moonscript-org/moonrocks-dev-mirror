package = "nvim-dap-profiles"
version = "scm-1"
rockspec_format = "3.0"

description = {
    summary = "Profiles for nvim-dap that exist in the project level.",
    detailed = [[
        Create a .nvim-dap-profiles.toml file in the root of your project to define profiles for nvim-dap.
        You can have multiple profiles for different configurations. Each profile has a binary path, and run dir path.
        When running a debug session, the plugin will auto fill and run the binary without having to enter the path.
    ]],
    license = "MIT",
    maintainer = "Martin Larsson <larssonmartin1998@gmail.com>",
    homepage = "https://github.com/LarssonMartin1998/nvim-dap-profiles"
}

dependencies = {
    "lua >= 5.1",
    "toml"
}

source = {
    url = "git://github.com/LarssonMartin1998/nvim-dap-profiles",
}

build = {
    type = "none"
}
