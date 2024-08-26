return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function(_)
    require("neo-tree").setup({
      window = {
        width = 40,
        position = "right",
      },
    })

    vim.api.nvim_create_autocmd("TermClose", {
      pattern = "*lazygit",
      callback = function()
        if package.loaded["neo-tree.sources.git_status"] then
          require("neo-tree.sources.git_status").refresh()
        end
      end,
    })
  end,
}
