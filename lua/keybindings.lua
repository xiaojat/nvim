-- nvim-tree代码格式化
vim.g.mapleader = ','
vim.keymap.set('n', '<leader>sy', ':source $MYVIMRC | PackerSync<cr>', opt)

vim.keymap.set('n', '<S-ee>', ':NvimTreeToggle<CR>', opt)
vim.keymap.set('n', '<S-e>', ':NvimTreeFocus<CR>', opt)
vim.keymap.set('n', '<S-t>', ':FloatermToggle<CR>', opt)
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opt)
vim.keymap.set("n", "<S-w>", ":BufferLinePickClose<CR>", opt)

vim.keymap.set('n', '<leader>.', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader><space>', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
vim.keymap
    .set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
