local path_hardcoded =  "/path/to/vault"
require("obsidian").setup ({
    legacy_commands = false,
    workspaces = {
        {
            name = "personal",
            path = path_hardcoded
        },
    },
    frontmatter = {
        func = function(note)
            local full_path = tostring(note.path)
            local vault_root = vim.fn.expand(path_hardcoded)
            local relative_path = full_path:gsub("^" .. vim.pesc(vault_root) .. "/?", "")

            -- Get title from first H1
            local lines = vim.api.nvim_buf_get_lines(0, 0, 20, false)
            local title = nil
            for _, line in ipairs(lines) do
                local h1 = line:match("^#%s+(.+)")
                if h1 then
                    title = h1
                    break
                end
            end

            if not title then
                title = note.id
            end

            local aliases = note.aliases or {}
            if #aliases == 0 then
                table.insert(aliases, title)
            end

            local out = {
                path = relative_path,
                id = note.id,
                aliases = aliases or {},
                tags = note.tags or {},
                title = title,
            }
            return out
        end,
        sort = {
            "path",
            "id",
            "aliases",
            "tags",
            "title"
        }
    },
})
