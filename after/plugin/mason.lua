require('mason').setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua-language-server",
        "python-lsp-server",
        "eslint-lsp",
        "typescript-language-server"
    }
}
