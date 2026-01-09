-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Move lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clear search highlight
vim.keymap.set("n", "<Esc>", ":noh<CR>")

-- Quick split
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")

vim.keymap.set("n", "<leader>L", ":Lazy<CR>")
vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d')
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

-- Terminal toggle
local term_buf = nil
local prev_buf = nil

local function toggle_terminal()
	local current_buf = vim.api.nvim_get_current_buf()

	-- If we're in the terminal buffer, go back to previous buffer
	if current_buf == term_buf then
		if prev_buf and vim.api.nvim_buf_is_valid(prev_buf) then
			vim.api.nvim_set_current_buf(prev_buf)
		end
		return
	end

	-- Save current buffer and switch to terminal
	prev_buf = current_buf
	if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
		vim.api.nvim_set_current_buf(term_buf)
	else
		vim.cmd("terminal")
		term_buf = vim.api.nvim_get_current_buf()
	end
	vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>t", toggle_terminal)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
