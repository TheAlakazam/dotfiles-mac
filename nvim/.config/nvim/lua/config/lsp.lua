local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

lspconfig.sumneko_lua.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true)
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {enable = false}
        }
    }
}

lspconfig.rust_analyzer.setup {capabilities = capabilities}

lspconfig.clangd.setup {capabilities = capabilities}

lspconfig.tsserver.setup {capabilities = capabilities}

lspconfig.texlab.setup {capabilities = capabilities}

lspconfig.clangd.setup {capabilities = capabilities}

lspconfig.tailwindcss.setup {capabilities = capabilities}

lspconfig.astro.setup {capabilities = capabilities}
