require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "rust", "python", "javascript", "typescript", "tsx", "json", "cpp", "c",
        "lua", "vim", "bash", "go", "yaml", "astro", "css", "html"
    },
    highlight = {enable = true},
    indent = {enable = true}
}
