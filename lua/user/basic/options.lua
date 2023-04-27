local opt = vim.opt -- for conciseness

-- utf8
opt.encoding = "UTF-8"
opt.fileencoding = "utf-8"

-- jk移动时光标下上方保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Mouse stuf
opt.mousemoveevent = true

opt.list = true
-- opt.listchars:append("space:⋅")
-- opt.listchars:append("eol:↴")

-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- For fold
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- 补全增强
-- vim.o.wildmenu = true

-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- status line
opt.winbar = "%=%t"

-- Auto save
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
	pattern = { "*" },
	command = "silent! wall",
	nested = true,
})

-- Restore cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.fn.setpos(".", vim.fn.getpos("'\""))
			vim.cmd("silent! foldopen")
		end
	end,
})

-- 切换到英文输入法
function switchToEnglish()
	vim.fn.system("im-select com.apple.keylayout.ABC")
end

-- 进入 normal 模式时切换为英文输入法
vim.cmd([[
augroup input_method
  autocmd!
  autocmd InsertLeave * :lua switchToEnglish()
augroup END
]])
