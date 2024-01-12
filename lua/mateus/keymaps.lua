local telescope_builtin = require('telescope.builtin')

local keymap = vim.keymap
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- ThePrimeagen
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set('n', '<leader>f', ':nohlsearch<CR>')

-- Telescope
keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})

-- Bufferline
keymap.set("n", "<leader>z", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>x", "<cmd>BufferLineCycleNext<CR>")

-- Harpoon
keymap.set("n", "<leader>A", mark.add_file)
keymap.set("n", "<leader>a", ui.toggle_quick_menu)
keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
keymap.set("n", "<leader>4", function() ui.nav_file(5) end)
keymap.set("n", "<leader>4", function() ui.nav_file(6) end)
keymap.set("n", "<leader>4", function() ui.nav_file(7) end)

-- Nvim-tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeFocus<CR>", { desc = "Refresh file explorer" })
keymap.set('n', '<c-n>', ':NvimTreeFindFile<CR>')
