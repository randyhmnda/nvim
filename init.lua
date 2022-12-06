require("plugins")

require("nvterm").setup()
require("nvim-tree").setup()

vim.keymap.set({ "n", "t" }, "<A-h>", function() require("nvterm.terminal").toggle("horizontal") end)
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
