-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/dockerls.lua

return {
	cmd = {
		"docker-language-server",
    "start",
		"--stdio",
	},
	filetypes = {
		"dockerfile",
	},
	root_markers = {
		".git",
		"Dockerfile",
	},

	single_file_support = true,
}
