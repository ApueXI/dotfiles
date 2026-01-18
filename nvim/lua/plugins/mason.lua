return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        -- Need this for roslyn
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = {
        "jq",
        "fantomas",
        "prettierd",
        "ruff",
        "shfmt",
        "stylua",
        "netcoredbg",
        "stylelint",
      },
    },
  },
}
