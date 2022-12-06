require("plugins")

require("nvterm").setup()
require("nvim-tree").setup()

vim.g.mapleader = " " -- idk if this will works or not, cause i'm still newbie

vim.keymap.set({ "n", "t" }, "<A-h>", function() require("nvterm.terminal").toggle("horizontal") end)
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")

-- don't forget to install prettier with command "CocInstall coc-prettier"
vim.api.nvim_create_autocmd("BufWritePre", { command = "CocCommand prettier.forceFormatDocument" })
