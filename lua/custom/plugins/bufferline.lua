vim.pack.add({
  { src = 'https://github.com/akinsho/bufferline.nvim' },
})

require('bufferline').setup({
  options = {
    mode = 'buffers',
    separator_style = 'slant',
    always_show_bufferline = true,

    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        text_align = 'center',
        highlight = 'Directory',
        separator = true,
      },
    },
  },
})

vim.o.showtabline = 2

vim.keymap.set({'n', 'i', 'v', 's', 'x'}, '<C-Right>', '<cmd>BufferLineCycleNext<CR>',
  { desc = 'Next buffer' })

vim.keymap.set({'n', 'i', 'v', 's', 'x'}, '<C-Left>', '<cmd>BufferLineCyclePrev<CR>',
  { desc = 'Previous buffer' })