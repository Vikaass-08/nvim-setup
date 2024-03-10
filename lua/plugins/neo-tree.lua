return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    local opts = { noremap = true, silent = true }

    -- Window Split
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', opts)
    vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)
    vim.keymap.set('n', '<leader>sh', ':split<CR>', opts)

    -- Window Navigation
    vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
    vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
    vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
    vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

    -- Navigate buffers 
    vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)
    vim.keymap.set('n', '<S-h>', ':bprevious<CR>', opts)

    -- Delete the current buffer
    vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', opts)
  end
}
