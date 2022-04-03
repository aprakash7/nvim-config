-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"

require("aprakash.options")
require("aprakash.keymaps")
require("aprakash.plugins")
require("aprakash.colorschemes")
require("aprakash.cmp")
require("aprakash.lsp")
require("aprakash.telescope")
require("aprakash.treesitter")
require("aprakash.autopairs")
require("aprakash.gitsigns")
require("aprakash.nvim-tree")
require("aprakash.bufferline")
require("aprakash.toggleterm")
require("aprakash.alpha")
require("aprakash.impatient")
require("aprakash.lualine")
require("aprakash.projects")
-- require("aprakash.indentline")
require("aprakash.neoscroll")
require("aprakash.presence")
require("aprakash.colorscheme.onedark")
require("aprakash.colorscheme.colorizer")

vim.cmd([[ 
let g:nvcode_termcolors=256

syntax on
colorscheme behave " Or whatever colorscheme you make

" checks if your terminal has 24-bit color support"
if (has("termguicolors"))
   set termguicolors
   hi LineNr ctermbg=NONE guibg=NONE
endif
]])
