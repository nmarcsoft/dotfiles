return {
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip" },
  { "nvim-neotest/nvim-nio" },
  { "jose-elias-alvarez/null-ls.nvim" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "query",
        "regex",
        "typescript",
        "vim",
        "yaml",
        "c",
        "cpp",
        "rust",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "emoji" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      require("mason").setup() -- Initialize Mason here
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "rust_analyzer", "clangd" }, -- Ensure these are installed
      })

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configure each LSP server
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.rust_analyzer.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "eslint-lsp",
        "graphql-language-service-cli",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "prisma-language-server",
        "rust-analyzer",
        "shfmt",
        "stylua",
        "clangd",
        "flake8",
      },
    },
  },
  { "williamboman/mason-lspconfig.nvim" },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.flake8,
        },
      })
    end,
  },
  {
    "whonore/Coqtail",
  },
}
