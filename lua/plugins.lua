vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "NvChad/nvterm"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use { "neoclide/coc.nvim", branch = "release" }
  use "neovim/nvim-lspconfig"
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"
  use "nvim-lualine/lualine.nvim"
  use "romgrk/barbar.nvim"
end)
