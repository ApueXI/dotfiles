return {
  tailwindcss = function(_, opts)
    opts.filetypes = opts.filetypes or {}

    -- Add default filetypes
    vim.list_extend(opts.filetypes, vim.lsp.config.tailwindcss.filetypes)

    -- Remove excluded filetypes
    --- @param ft string
    opts.filetypes = vim.tbl_filter(function(ft)
      return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
    end, opts.filetypes)

    -- Add additional filetypes
    vim.list_extend(opts.filetypes, opts.filetypes_include or {})

    -- 🚀 Performance flags
    opts.flags = opts.flags or {}
    opts.flags.debounce_text_changes = 150
  end,

  vtsls = function(_, opts)
    if vim.lsp.config.denols and vim.lsp.config.vtsls then
      ---@param server string
      local resolve = function(server)
        local markers = vim.lsp.config[server].root_markers
        local root_dir = vim.lsp.config[server].root_dir

        vim.lsp.config(server, {
          root_dir = function(bufnr, on_dir)
            local is_deno = vim.fs.root(bufnr, { "deno.json", "deno.jsonc" }) ~= nil
            if is_deno == (server == "denols") then
              if root_dir then
                return root_dir(bufnr, on_dir)
              elseif type(markers) == "table" then
                local root = vim.fs.root(bufnr, markers)
                return root and on_dir(root)
              end
            end
          end,
        })
      end

      resolve("denols")
      resolve("vtsls")
    end
  end,

  eslint = function()
    local auto_format = true
    if not auto_format then
      return
    end

    local formatter = LazyVim.lsp.formatter({
      name = "eslint: lsp",
      primary = false,
      priority = 200,
      filter = "eslint",
    })

    -- register the formatter with LazyVim
    LazyVim.format.register(formatter)
  end,
}
