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
        "shfmt",
        "stylua",
        "netcoredbg",
        "stylelint",
        -- "csharpier",
      },
    },
  },
}

-- Installed
--   ◍ ruff (keywords: python)
--   ◍ roslyn (keywords: c#)
--   ◍ stylelint (keywords: css, sass, scss, less)
--   ◍ lua-language-server lua_ls (keywords: lua)
--   ◍ ast-grep ast_grep (keywords: c, c++, rust, go, java, python, c#, javascript, jsx, typescript, html, css, kotlin, dart, lua)
--   ◍ bash-language-server bashls (keywords: bash, csh, ksh, sh, zsh)
--   ◍ css-lsp cssls (keywords: css, scss, less)
--   ◍ docker-compose-language-service docker_compose_language_service (keywords: docker)
--   ◍ dockerfile-language-server dockerls (keywords: docker)
--   ◍ emmet-language-server emmet_language_server (keywords: emmet)
--   ◍ eslint-lsp eslint (keywords: javascript, typescript)
--   ◍ fantomas (keywords: f#)
--   ◍ fsautocomplete (keywords: f#)
--   ◍ graphql-language-service-cli graphql (keywords: graphql)
--   ◍ html-lsp html (keywords: html)
--   ◍ jq (keywords: json)
--   ◍ json-lsp jsonls (keywords: json)
--   ◍ netcoredbg (keywords: .net, c#, f#)
--   ◍ prettierd (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
--   ◍ pyright (keywords: python)
--   ◍ shfmt (keywords: bash, mksh, shell)
--   ◍ sqlls (keywords: sql)
--   ◍ stylua (keywords: lua, luau)
--   ◍ tailwindcss-language-server tailwindcss (keywords: css)
--   ◍ terraform-ls terraformls (keywords: terraform)
--   ◍ vtsls (keywords: javascript, typescript)
--   ◍ yaml-language-server yamlls (keywords: yaml)
