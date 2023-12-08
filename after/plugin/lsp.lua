local lsp = require('lsp-zero').preset({})
-- local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lsp-zero').setup()

-- sign column background defaults to colorscheme after sourcing

-- new config
-- require('lspconfig.configs').my_new_lsp = {
--   default_config = {
--     name = 'my-new-lsp',
--     cmd = {'my-new-lsp'},
--     filetypes = {'my-filetype'},
--     root_dir = require('lspconfig.util').root_pattern({'some-config-file'})
--   }
-- }
--
-- require('lspconfig').my_new_lsp.setup({})
