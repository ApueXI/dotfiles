return {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  settings = {
    complete_function_calls = false,
    vtsls = {
      enableMoveToFileCodeAction = true,
      autoUseWorkspaceTsdk = true,
      experimental = {
        maxInlayHintLength = 50,
        completion = {
          -- Disabled
          enableServerSideFuzzyMatch = false,
        },
      },
    },

    typescript = {
      updateImportsOnFileMove = { enabled = "always" },
      suggest = {
        completeFunctionCalls = true,
      },
      inlayHints = {
        enumMemberValues = { enabled = true },
        parameterNames = { enabled = "literals" },

        -- Disabled
        functionLikeReturnTypes = { enabled = false },
        parameterTypes = { enabled = false },
        propertyDeclarationTypes = { enabled = false },
        variableTypes = { enabled = false },
      },
      format = { enable = false },
    },

    javascript = {
      updateImportsOnFileMove = { enabled = "always" },
      suggest = {
        completeFunctionCalls = true,
      },
      inlayHints = {
        enumMemberValues = { enabled = true },
        parameterNames = { enabled = "literals" },

        -- Disabled
        functionLikeReturnTypes = { enabled = false },
        parameterTypes = { enabled = false },
        propertyDeclarationTypes = { enabled = false },
        variableTypes = { enabled = false },
      },
      format = { enable = false },
    },
  },
  flags = {
    debounce_text_changes = 200, -- wait 200ms after typing
  },
}

-- "typescript.inlayHints.parameterTypes.enabled": {
--   "type": "boolean",
--   "default": false,
--   "markdownDescription": {
--     "message": "Enable/disable inlay hints for implicit parameter types:\n```typescript\n\nel.addEventListener('click', e /* :MouseEvent */ => ...)\n \n```",
--     "comment": [
--       "The text inside the ``` block is code and should not be localized."
--     ]
--   }
-- },
