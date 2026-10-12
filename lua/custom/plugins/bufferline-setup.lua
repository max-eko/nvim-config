
vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/akinsho/bufferline.nvim'
})

-- Enable the global tabline so it always displays at the top
vim.o.showtabline = 2

-- Configure and initialize bufferline
require('bufferline').setup({
  options = {
    mode = "buffers", -- Displays open files as tabs
    diagnostics = "nvim_lsp", -- Shows LSP errors/warnings directly on the tab
    separator_style = "slant", -- Can be "slant", "slope", "thick", or "thin"
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      }
    }
  }
})

-- Navigate tabs seamlessly using Shift + H and Shift + L
vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Prev tab' })
vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next tab' })

-- Close the current tab/buffer using Leader + c
vim.keymap.set('n', '<leader>c', '<Cmd>bdelete<CR>', { desc = '[C]lose current tab' })
