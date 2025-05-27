-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require("lspconfig").pyright.setup {}

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers =
  { "html", "cssls", "svelte", "jinja_lsp", "emmet_language_server", "pylsp", "ts_ls", "tailwindcss", "eslint", "phpactor" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.html.setup {
  filetypes = { "html", "htmldjango" },
  on_attach = function(client, bufnr)
    if vim.bo.filetype == "htmldjango" then
      client.server_capabilities.documentFormattingProvider = false -- Neovim >= 0.8
      print "HTML LSP: Formatting disabled for htmldjango"
    else
      print "HTML LSP: Formatting enabled"
    end
    -- Agrega aquí cualquier otra configuración personalizada
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
