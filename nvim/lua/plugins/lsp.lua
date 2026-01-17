return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      fsautocomplete = {}, -- F# support
      roslyn = {}, -- C# support
      ast_grep = {},
      bashls = {},
      cssls = {},
      docker_compose_language_service = {},
      dockerls = {},
      emmet_language_server = {},
      emmet_ls = {},
      eslint = {},
      fantomas = {},
      graphsql = {},
      html = {},
      jsonls = {},
      lua_ls = {},
      netcoredbg = {},
      prettier = {},
      prettierd = {},
      pyright = {},
      ruff = {},
      shfmt = {},
      sqlls = {},
      stylua = {},
      tailwindcss = {},
      terraformls = {},
      ts_ls = {},
      vstsls = {},
      yamlls = {},
    },
  },
}
-- ◍ ast-grep ast_grep (keywords: c, c++, rust, go, java, python, c#, javascript, jsx, typescript, html, css, kotlin, dart, lua)
-- ◍ bash-language-server bashls (keywords: bash, csh, ksh, sh, zsh)
-- ◍ css-lsp cssls (keywords: css, scss, less)
-- ◍ docker-compose-language-service docker_compose_language_service (keywords: docker)
-- ◍ dockerfile-language-server dockerls (keywords: docker)
-- ◍ emmet-language-server emmet_language_server (keywords: emmet)
-- ◍ emmet-ls emmet_ls (keywords: emmet)
-- ◍ eslint-lsp eslint (keywords: javascript, typescript)
-- ◍ fantomas (keywords: f#)
-- ◍ fsautocomplete (keywords: f#)
-- ◍ graphql-language-service-cli graphql (keywords: graphql)
-- ◍ html-lsp html (keywords: html)
-- ◍ json-lsp jsonls (keywords: json)
-- ◍ lua-language-server lua_ls (keywords: lua)
-- ◍ netcoredbg (keywords: .net, c#, f#)
-- ◍ prettier (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
-- ◍ prettierd (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
-- ◍ pyright (keywords: python)
-- ◍ roslyn (keywords: c#)
-- ◍ ruff (keywords: python)
-- ◍ shfmt (keywords: bash, mksh, shell)
-- ◍ sqlls (keywords: sql)
-- ◍ stylelint (keywords: css, sass, scss, less)
-- ◍ stylua (keywords: lua, luau)

-- ◍ tailwindcss-language-server tailwindcss (keywords: css)
-- ◍ terraform-ls terraformls (keywords: terraform)
-- ◍ typescript-language-server ts_ls (keywords: typescript, javascript)
-- ◍ vtsls (keywords: javascript, typescript)
-- ◍ yaml-language-server yamlls (keywords: yaml)
