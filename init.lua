require("plugins")

require("nvterm").setup({
  terminals = {
    type_opts = {
      horizontal = {
        split_ratio = .5
      },
    },
  },
})
require("nvim-tree").setup()

-- change leader key to <space>
vim.g.mapleader = " " -- idk if this will works or not, cause i'm still newbie


vim.keymap.set({ "n", "t" }, "<A-h>", function() require("nvterm.terminal").toggle("horizontal") end)
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
vim.keymap.set("n", "<TAB>", "<cmd> tabp <CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd tabn <CR>")

-- don't forget to install prettier with command "CocInstall coc-prettier"
vim.api.nvim_create_autocmd("BufWritePre", { command = "CocCommand prettier.forceFormatDocument" })
-- sumneko_lua
vim.api.nvim_create_autocmd("BufWritePre", { command = "lua vim.lsp.buf.formatting()" })

require("lspconfig")["sumneko_lua"].setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' } -- prevent 'undefined global vim'
      },
      format = {
        enable = true,
      },
    },
  },
}

local set = vim.opt

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
