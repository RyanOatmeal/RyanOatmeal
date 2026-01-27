require("config.lazy")

vim.opt.colorcolumn = "81"
vim.opt.background = "dark"
vim.opt.number = true

-- God I hate this stuff. Let me type how I want.
vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.cindent = false
vim.opt.indentexpr = ""
vim.cmd("filetype indent off")
-- Somehow this disables auto adding comments when
-- you hit enter: https://superuser.com/a/963068
vim.cmd("autocmd FileType * set formatoptions-=cro")

-- Gruvbox needs to see the background 
-- opt first and I like dark.
vim.cmd.colorscheme("gruvbox")
