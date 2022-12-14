--[[
  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
Neovim init file
Version: 0.7.1_rev3 - 2021/10/09
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua
--]]

-- variables
vim.g.mapleader = " "
vim.g.snippets = "luasnip"
-----------------------------------------------------------
-- Options
-----------------------------------------------------------

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- indent
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

--theme
--vim.cmd("colorscheme enfocado")
--vim.cmd("colorscheme nightfox")
--vim.cmd("colorscheme noctis")
vim.cmd("colorscheme tokyonight-night")
vim.g.lualine_color = "tokyonight"
--clipboard
vim.o.clipboard = 'unnamedplus'

----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require("plugins")                       -- plugins
require('keymaps')                       -- keymaps


