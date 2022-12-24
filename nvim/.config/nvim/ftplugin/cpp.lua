vim.api.nvim_buf_set_keymap(0, 'n', '<F10>', '<cmd>sp | term clang++ -std=c++17 % -o %:r && ./%:r<CR>', { noremap = true, silent = true})
