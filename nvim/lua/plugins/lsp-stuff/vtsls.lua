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
    complete_function_calls = true,
    vtsls = {
      enableMoveToFileCodeAction = true,
      autoUseWorkspaceTsdk = true,
      experimental = {
        maxInlayHintLength = 30,
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
      format = { enable = false },
    },
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
