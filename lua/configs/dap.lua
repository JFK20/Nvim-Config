local dap = require "dap"

-- C/C++ (and Rust) debugging via lldb-dap from the system llvm/lldb package
dap.adapters.lldb = {
  type = "executable",
  command = "lldb-dap",
  name = "lldb",
}

dap.configurations.c = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = function()
      return vim.split(vim.fn.input "Arguments: ", " ", { trimempty = true })
    end,
  },
}
dap.configurations.cpp = dap.configurations.c
