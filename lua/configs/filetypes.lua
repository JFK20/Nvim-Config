vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "DockerFile*", "Dockerfile*", "DockerCompose*", "docker-compose*" },
  callback = function()
    vim.bo.filetype = "dockerfile"
    -- print("Filetype set to dockerfile for:", vim.fn.expand("%"))
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".gitlab-ci.yml", },
  callback = function()
    vim.bo.filetype = "yaml.gitlab"
    -- print("Filetype set to gitlab-ci for:", vim.fn.expand("%"))
  end,
})


