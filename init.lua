require("plugins")

local nvterm_c = require("configs.nvterm-c")
local lualine_c = require("configs.lualine-c")
local sumneko_lua_c = require("configs.sumneko-lua-c")

require("nvterm").setup(nvterm_c)
require("nvim-tree").setup()
require('nvim-autopairs').setup {}
require('Comment').setup()
require('lualine').setup(lualine_c)
require('bufferline').setup()

-- change leader key to <space>
vim.g.mapleader = " "

vim.keymap.set({ "n", "t" }, "<A-h>", function() require("nvterm.terminal").toggle("horizontal") end)
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
vim.keymap.set("n", "<TAB>", "<cmd> BufferNext <CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd> BufferPrevious <CR>")
vim.keymap.set("n", "<leader>x", "<cmd> BufferClose <CR>")
vim.keymap.set("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end)

-- don't forget to install prettier with command "CocInstall coc-prettier"
vim.api.nvim_create_autocmd("BufWritePre", { command = "CocCommand prettier.forceFormatDocument" })
-- sumneko_lua
vim.api.nvim_create_autocmd("BufWritePre", { command = "lua vim.lsp.buf.formatting()" })

require("lspconfig")["sumneko_lua"].setup(sumneko_lua_c)

local set = vim.opt

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
