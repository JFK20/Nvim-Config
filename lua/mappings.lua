require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- fuzzy find over file names AND file contents in one picker
-- (lists every line via ripgrep; matching runs on "path:line:col:text")
map("n", "<leader>ff", function()
  require("telescope.builtin").grep_string {
    search = "",
    only_sort_text = false,
    prompt_title = "Find in files & names",
  }
end, { desc = "telescope fuzzy find file names and contents" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Debug Add breakpoint to current line" })
map("n", "<leader>dc", function ()
  require("dap").continue()
end, {desc = "Continue debugging"})
map("n", "<leader>dus", function()
    local widgets = require("dap.ui.widgets")
    local sidebar = widgets.sidebar(widgets.scopes)
    sidebar.open()
  end, { desc = "Debug: Open debugging sidebar" })
  
-- DAP-Go mappings
map("n", "<leader>dgt", function()
    require("dap-go").debug_test()
end, { desc = "Debug: Run Go test" })
  
map("n", "<leader>dgl", function()
    require("dap-go").debug_last()
end, { desc = "Debug: Run last Go test" })

map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

map('n', '<leader>gr', '<cmd>term go run .<CR>', { desc = "Run go file"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
