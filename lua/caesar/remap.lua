-- Sets the mapleader in vim to " ".
-- vim.g.mapleader = " "; 
vim.api.nvim_set_var("mapleader", " ")


vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

-- In visual mode, pressing J will move the selection down by one line.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- In visual mode, pressing K will move the selection up by one line.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, pressing J will join the current linvim.keymap.set("n", "<leader>pv", vim.cmd.Ex)e with the line below it.
vim.keymap.set("n", "J", "mzJ`z")

-- In normal mode, pressing <C-d> scrolls down half a page, and then centers the view on the cursor line.
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- In normal mode, pressing <C-u> scrolls up half a page, and then centers the view on the cursor line.
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- In normal mode, pressing n finds the next occurrence of the search pattern and centers the view on it.
vim.keymap.set("n", "n", "nzzzv")

-- In normal mode, pressing N finds the previous occurrence of the search pattern and centers the view on it.
vim.keymap.set("n", "N", "Nzzzv")

-- In visual mode, pressing <leader>p deletes the selection and pastes the last deleted text.
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- In normal and visual modes, pressing <leader>y copies the selection to the clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- In normal mode, pressing <leader>Y copies the line to the clipboard.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- In normal and visual modes, pressing <leader>d deletes the selection.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- In insert mode, pressing <C-c> exits insert mode.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- In normal mode, pressing Q does nothing.
vim.keymap.set("n", "Q", "<nop>")

-- In normal mode, pressing <C-f> opens a new tmux session.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- In normal mode, pressing <leader>f formats the buffer using the language server protocol.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- In normal mode, pressing <C-k> goes to the next item in the quickfix list and centers the view on the line.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- In normal mode, pressing <C-j> goes to the previous item in the quickfix list and centers the view on the line.
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- In normal mode, pressing <leader>k goes to the next item in the location list and centers the view on the line.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- In normal mode, pressing <leader>j goes to the previous item in the location list and centers the view on the line.
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- In normal mode, pressing <leader>s prompts a search and replace of the word under the cursor in the entire file.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- In normal mode, pressing <leader>x changes the permissions of the current file to make it executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- In normal mode, pressing <leader>vpp opens the packer.lua file located at the specified path.
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

-- In normal mode, pressing <leader>mr runs the CellularAutomaton make_it_rain command.
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- In normal mode, pressing <leader><leader> executes the `so` command in vim which typically is used to source vimscript files.
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- global
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
