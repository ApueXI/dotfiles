return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        -- Need this for roslyn
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },

  -- {
  --   "mason-org/mason-lspconfig.nvim",
  --   opts = {
  --     ensure_installed = {
  --       "lua_ls",
  --       "rust_analyzer",
  --     },
  --   },
  -- },
}
