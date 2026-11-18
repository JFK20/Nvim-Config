return {
    cmd = {
        "yaml-language-server",
        "--stdio",
    },
    filetypes = {
        "yml",
        "yaml",
        "yaml.docker-compose",
        "yaml.gitlab",
        "yaml.helm-values",
    },
    root_markers = {
        ".git",
    },
    single_file_support = true,
    settings = {
        redhat = {
            telemetry = {
                enabled = false,
            },
        },
        yaml = {
            format = {
                enable = true,
            },
        },
    },
    init_options = {},
}
