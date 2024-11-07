return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  { "iamcco/markdown-preview.nvim" },
  { import = "lazyvim.plugins.extras.ui.mini-starter" },
  {
    "echasnovski/mini.starter",
    opts = function(_, opts)
      opts.items = {}
      opts.header = table.concat({
        "                 /|  /|  ---------------------------",
        "                 ||__||  |                         |",
        "                /   O O\\__  I have a horny little  |",
        "               /          \\   operating system     |",
        "              /      \\     \\                       |",
        "             /   _    \\     \\ ----------------------",
        "            /    |\\____\\     \\      ||",
        "           /     | | | |\\____/      ||",
        "          /       \\| | | |/ |     __||",
        "         /  /  \\   -------  |_____| ||",
        "        /   |   |           |       --|",
        "        |   |   |           |_____  --|",
        "        |  |_|_|_|          |     \\----",
        "       /\\                  |",
        "      / /\\        |        /",
        "     / /  |       |       |",
        " ___/ /   |       |       |",
        "|____/    c_c_c_C/ \\C_c_c_c\n\n\n",
      }, "\n")

      opts.footer = "Beer ?"
    end,
  },
}
