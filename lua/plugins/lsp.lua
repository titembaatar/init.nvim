return{
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "bashls",
        "docker_compose_language_service",
        "marksman",
        "clangd",
        "lua_ls",
        "gopls",
        "jsonls",
        "yamlls",
        "taplo",
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
