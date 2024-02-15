-- netrw
vim.keymap.set("n", "<leader><leader>", ":w<CR>:Ex<CR>")
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim-fugitive (git)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- move chunk
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- centered cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste retention
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without yank
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

-- quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- terminal
-- horizontal split
vim.keymap.set("n", "<leader>tt", "<C-w>s<C-w>j<C-w>10-<cmd>term<CR>a")
-- vertical split
vim.keymap.set("n", "<leader>ty", "<C-w>v<C-w>l<C-w>10<lt><cmd>term<CR>a")
-- insert -> normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- exit from any mode
vim.keymap.set("t", "<C-Esc>", "<C-\\><C-n><C-w><C-c>")

-- word reset
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make exec
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- cellular automaton!
vim.keymap.set("n", "<leader>no", "<cmd>CellularAutomaton make_it_rain<CR>");

-- windows
-- 4 windows (Typescript API dev)
vim.api.nvim_create_user_command('Wints', 'norm <C-w>v<C-w>s<C-w>30><C-w>15+<C-w>l<C-w>s<C-w>12+<C-w>h', {})
