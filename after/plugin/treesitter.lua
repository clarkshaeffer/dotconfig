require'nvim-treesitter'.install({ "lua", "vim", "vimdoc", "query", "python", "javascript", "typescript", "markdown" })

vim.api.nvim_create_autocmd({ "FileType" }, {
  callback = function()
    local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
    if lang then
      pcall(vim.treesitter.start)
    end
  end,
})
