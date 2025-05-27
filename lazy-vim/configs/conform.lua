local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    htmldjango = { "prettier" },
    python = { "black" },
    jsx = { "prettier" },
    tsx = { "prettier" },
  },

  format_on_save = false,
}

return options
