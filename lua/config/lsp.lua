return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = false
          end,
          settings = {
            workingDirectory = { mode = "auto" },
            validate = "on",
            lintTask = {
              enable = true,
            },
            run = "onType",
            format = true,
          },
        },
      },
    },
  },
}
