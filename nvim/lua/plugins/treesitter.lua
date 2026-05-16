return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      disable = {
        "html",
      },
    },
    ensure_installed = {
      "c_sharp",
      "fsharp",
      "ninja",
      "rst",
      "json5",
      "php",
      "blade",
    },
  },
}
