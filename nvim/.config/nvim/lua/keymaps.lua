---------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- telescope

vim.keymap.set('n', '<leader>pp', require"telescope.builtin".git_files, {remap = false})
vim.keymap.set('n', '<leader>po', require"telescope.builtin".find_files, {remap = false})
vim.keymap.set('n', '<leader>gs', require"telescope.builtin".git_status, {remap = false})


-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)


-- neotree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close

-- fast saving with <leader> and s
map('n', '<C-s>', ':w<CR>', default_opts)
map('i', '<C-s', '<C-c>:w<CR>', default_opts)

-- terminal

map('n', '<S-t>',':terminal<CR>', default_opts)

-- jikit jupyter notebook
map('n','<C-a>',':jukit#send#section(0)<CR>',default_opts)
--nnoremap <leader><space> :call jukit#send#section(0)<cr>
-- Send code within the current cell to output split (also saves the output if ipython is used and `g:jukit_save_output==1`). Argument: if 1, will move the cursor to the next cell below after sending the code to the split, otherwise cursor position stays the same.

-- Latex
map('n','<leader>p','LLStartPreview<CR>',default_opts)