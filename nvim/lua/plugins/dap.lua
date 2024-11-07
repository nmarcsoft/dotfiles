return {
  {
    "julianolf/nvim-dap-lldb",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = { codelldb_path = "~/.local/share/nvim/mason/packages/codelldb/codelldb" },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      local dap = require("dap")
      local ui = require("dapui")
      local project_root = vim.fn.getcwd()
      require("dap-python").setup(project_root .. "/.venv/bin/python")
      require("dapui").setup()

      vim.keymap.set("n", "<F5>", dap.toggle_breakpoint)
      vim.keymap.set("n", "<F12>", dap.run_to_cursor)
      vim.keymap.set("n", "<F6>", dap.continue)
      vim.keymap.set("n", "<F7>", dap.step_into)
      vim.keymap.set("n", "<F8>", dap.step_over)
      vim.keymap.set("n", "<F9>", dap.step_out)
      vim.keymap.set("n", "<F10>", dap.step_back)
      vim.keymap.set("n", "<F13>", dap.restart)

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end,
  },
}
