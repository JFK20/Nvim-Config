return {
    cmd = {
        "gitlab-ci-ls", 
    },
    filetypes = {
        "yaml.gitlab",
    },
    root_markers = {
        ".gitlab-ci.yml",
        ".gitlab-ci.yaml",
        "gitlab-ci.yml",
        "gitlabci.yaml",
        ".git",
    },
    single_file_support = true,
    settings = {},
}
