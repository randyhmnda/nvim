return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' } -- prevent 'undefined global vim'
      },
      format = {
        enable = true
      }
    }
  }
}
