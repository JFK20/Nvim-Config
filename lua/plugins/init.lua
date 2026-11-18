require("configs.filetypes")

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "go", "gomod",
        "c", "cpp", "cmake", "make",
      },
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    lazy=false,
    config = function()
        require('render-markdown').setup({})
        require('render-markdown').enable()
    end,
  },
  {
    "mfussenegger/nvim-dap",
    cmd = { "DapToggleBreakpoint", "DapContinue" },
    config = function()
      require "configs.dap"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end
  },
  {
    "nvimtools/none-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.none-ls"
    end,
  },
  {
    "fatih/vim-go",
    ft = "go",
  },
}
