local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

keymap('n', '<C-S>', [[<cmd>w!<cr>]], { noremap = true })
keymap('i', '<C-S>', [[<C-C><cmd>w!<cr>]], { noremap = true })
keymap('v', '<C-S>', [[<C-C><cmd>w!<cr>]], { noremap = true })
keymap("i", "jk", "<Esc>", opts)
keymap("i", "<C-c>", "<Esc>", opts)

keymap("n", "<leader><CR>", "<cmd>lua ReloadConfig()<CR>", opts)
-- Defx
-- keymap("n", "<Leader>e", ":<C-U>Defx<CR>", opts)
keymap("n", "_", ":Defx -search=`expand('%:p')` -show-ignored-files<CR>", opts)
keymap("n", "-", ":Defx `expand('%:p:h')` -search=`expand('%:p')` -show-ignored-files<CR>", opts)

keymap("n", "ss", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "sf", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "sg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "sb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "sh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "so", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "sq", "<cmd>Telescope quickfix<cr>", opts)
keymap("n", "sc", "<cmd>Telescope commands<cr>", opts)
