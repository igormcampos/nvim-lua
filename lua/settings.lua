local opt = vim.opt

vim.cmd "colorscheme onedark"

opt.number = true
opt.relativenumber = true
opt.backup = false
opt.writebackup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.ignorecase = true
opt.mouse = "a"
opt.pumheight = 10
opt.showmode = false
opt.showtabline = 2
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.timeoutlen = 300
opt.updatetime = 300
opt.undofile = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.iskeyword:append("-")
opt.whichwrap:append("<,>,[,]")
opt.formatoptions:remove("cro")
opt.laststatus= 2
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.wrap = false
opt.background = "dark"
opt.termguicolors = true

