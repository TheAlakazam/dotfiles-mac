local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Telescope Mappings
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {silent = true})
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')

-- LSP Mappings
map('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>', {silent = true})
map('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {silent = true})
map('n', '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', {silent = true})
map('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>',
    {silent = true})
map('n', '<leader>ls', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
    {silent = true})
map('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>',
    {silent = true})
map('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<CR>', {silent = true})
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>', {silent = true})
map('n', '<leader>lc', '<cmd>lua vim.lsp.buf.show_line_diagnostics()<CR>',
    {silent = true})
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', {silent = true})

-- Window Mappings
map('n', '<C-j>', '<C-W>j')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')
map('n', '<C-k>', '<C-W>k')

-- Quickfix Mappings
map('n', ']c', '<cmd>cnext<CR>', {silent = true})
map('n', '[c', '<cmd>cprev<CR>', {silent = true})
map('n', '<leader>co', '<cmd>copen<CR>', {silent = true})
map('n', '<leader>cc', '<cmd>cclose<CR>', {silent = true})


-- Loclist Mappings
map('n', ']e', '<cmd>lnext<CR>', {silent = true})
map('n', '[e', '<cmd>lprev<CR>', {silent = true})
map('n', '<leader>eo', '<cmd>lopen<CR>', {silent = true})
map('n', '<leader>ec', '<cmd>lclose<CR>', {silent = true})

-- Diagnostics Mappings
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', {silent = true})
map('n', '[d', '<cmd>lua vim.diagnostic.goto_next()<CR>', {silent = true})

-- Nvim Tree
map('n', '<leader>a', '<cmd>NvimTreeToggle<CR>', {silent = true})
