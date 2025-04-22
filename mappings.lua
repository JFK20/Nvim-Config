require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

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

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
