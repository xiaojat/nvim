vim.opt.termguicolors = true
require('bufferline').setup({
    options = {mode = 'buffers', offsets = {{filetype = 'NvimTree'}}},
    highlights = {
        buffer_selected = {
            italic = false,
            bold = true,
            fg = {attribute = 'fg', highlight = 'Pmenu'}
        },

        indicator_selected = {
            italic = true,
            bold = false,
            fg = {attribute = 'fg', highlight = 'NormalFloat'}
        }
    }
})
