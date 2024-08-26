return {
  {
    'datsfilipe/vesper.nvim',
    config = function ()
      require('vesper').setup({
        transparent = true,
        italics = {
          comments = true,
          keywords = true,
          functions = false,
          strings = false,
          variables = false,
        },
        overrides = {},
        palette_overrides = {}
      })
    end
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vesper",
    },
  }
}
