vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "NvChad/nvterm"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
end)
