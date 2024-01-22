local telescope_builtin = require("telescope.builtin")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

local keymap = vim.keymap
local buf = vim.lsp.buf

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader>h", ":nohlsearch<CR>")
keymap.set("n", "J", "mzJ`z")

keymap.set("x", "<leader>p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "<leader>o", "o<Esc>")
keymap.set("n", "<leader>O", "O<Esc>")

-- Telescope
keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})

-- Harpoon
keymap.set("n", "<leader>A", mark.add_file)
keymap.set("n", "<leader>a", ui.toggle_quick_menu)
keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
keymap.set("n", "<leader>6", function() ui.nav_file(6) end)
keymap.set("n", "<leader>7", function() ui.nav_file(7) end)

keymap.set("n", "Q", function() term.gotoTerminal(1) end)
keymap.set("n", "W", function() term.gotoTerminal(2) end)
keymap.set("n", "R", function() term.gotoTerminal(3) end)
keymap.set("n", "T", function() term.gotoTerminal(4) end)

-- Nvim-tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeFocus<CR>", { desc = "Refresh file explorer" })
keymap.set("n", "<c-n>", ":NvimTreeFindFile<CR>")

-- LSP Config
local on_attach = function()
  keymap.set("n", "<leader>rn", buf.rename, {})
  keymap.set("n", "<leader>ca", buf.code_action, {})

  keymap.set("n", "gd", buf.definition, {})
  keymap.set("n", "gi", buf.implementation, {})
  keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  keymap.set("n", "K", buf.hover, {})
end

local cmp_mapping = function(cmp)
  return {
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-o>"] = cmp.mapping.complete(),
    ["<C-v>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }
end

local exported = {
  on_attach = on_attach,
  cmp_mapping = cmp_mapping,
}

return exported
