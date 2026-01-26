require("config.lazy")

vim.opt.colorcolumn = "81"
vim.opt.background = "dark"
vim.opt.number = true

-- Gruvbox needs to see the background 
-- opt first and I like dark.
vim.cmd.colorscheme("gruvbox")
