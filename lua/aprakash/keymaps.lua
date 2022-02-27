--NOTE: j and k are interchanged !!!!!!!!!!!!!

local opts= {noremap= true, silent= true}

local term_opts= {silent= true}

--leader -> across all files.
--localleader -> particular file type like a py file.
local kmap= vim.api.nvim_set_keymap

kmap("", "<Space>", "<Nop>", opts)

vim.g.mapleader= " "
vim.g.maplocalleader= " "


-- normal mode = "n"
-- insert mode = "i"
-- visual mode= "v"
-- visual block mode= "x"
-- term mode= "t"
-- command mode= "c"

-- Normal
-- Better window navigation
kmap("n", "<C-h>", "<C-w>h", opts)
kmap("n", "<C-k>", "<C-w>j", opts)
kmap("n", "<C-j>", "<C-w>k", opts)
kmap("n", "<C-l>", "<C-w>l", opts)

--Resize with arrows
kmap("n", "<C-Up>", ":resize +2<CR>", opts)
kmap("n", "<C-Down>", ":resize -2<CR>", opts)
kmap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
kmap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
kmap("n", "<S-l>", ":bnext<CR>", opts)
kmap("n", "<S-h>", ":bprevious<CR>", opts)

--Lexplore
kmap("n", "<leader>e", ":Lex 30<cr>", opts)

--jk to type faster
kmap("i", "jk", "<ESC>", opts)

-- normal mode, interchanged <j> and <k>
kmap("n", "j", "k", opts)
kmap("n", "k", "j", opts)

--Visual 
--Stay in indent mode
kmap("v", "<", "<gv", opts)
kmap("v", ">", ">gv", opts)

-- Move text up and down 
kmap("v", "<A-k>", ":m .+1<CR>==", opts)
kmap("v", "<A-j>", ":m .-2<CR>==", opts)

-- Terminal --
-- Better terminal navigation
--kmap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--kmap("t", "<C-k>", "<C-\\><C-N><C-w>j", term_opts)
--kmap("t", "<C-j>", "<C-\\><C-N><C-w>k", term_opts)
--kmap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

















