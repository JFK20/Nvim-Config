vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "DockerFile*", "Dockerfile*", "DockerCompose*", "docker-compose*" },
  callback = function()
    vim.bo.filetype = "dockerfile"
  end,
})

