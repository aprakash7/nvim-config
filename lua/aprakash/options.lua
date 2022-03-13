-- help options

local options = {
	number = true, -- set line numbers
	shiftwidth = 4, -- indentations; 4 spaces= 1 tab
	fileencoding = "utf-8", -- file encoding
	conceallevel = 0, -- for markdown files
	mouse = "a", -- enables the mouse to be used in all modes in neovim
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	backup = false, -- creates a backup file
	pumheight = 10, -- pop up menu height
	showmode = true, -- show mode
	smartindent = true, -- indentation
	cmdheight = 2, -- more space in the neovim cmd line to display messages
	termguicolors = true, -- terminal GUI colors
	ignorecase = true, -- ignore case in search patterns [S, s] -> same
	hlsearch = true, -- highlight all matches on previous search patterns
	showtabline = 2, -- always show tabs (2)
	cursorline = false, -- highlight the current line
	relativenumber = false, -- set relative numbered lines
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	undofile = true, -- persistent undo
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	splitright = true, -- force all vertical splits to go to the right of current window
	splitbelow = true, -- Place new window below the current one
	timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
	updatetime = 300, -- faster completion (4000ms default)
	wrap = false, -- display lines as one long line
	syntax = "ON", -- highlights the syntax
	colorcolumn = "120", -- Show col for max line length
}

--i, j in pairs(local obj) do for loop
--check out tables in lua; like dicts and lists combined
for k, v in pairs(options) do
	vim.opt[k] = v
end
