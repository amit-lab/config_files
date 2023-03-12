
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "ii", "<Esc>")

--keep cursor in middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--move heighlighet lines with capital j, k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--delete current line and past previously copied text without loosing it
vim.keymap.set("x", "<leader>p", "\"_dp")

--copy text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")
