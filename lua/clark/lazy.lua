require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function()
		-- 	vim.cmd([[colorscheme tokyonight-night]])
		-- end,
	},
    {
        "rose-pine/neovim",
        name = "rose-pine",
        -- config = function()
        --     vim.cmd([[colorscheme rose-pine]])
        -- end,
    },
	{'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate'},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	{'mbbill/undotree'},
	{'tpope/vim-fugitive'},

	-- lsp-zero
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},

    -- surround
    {
        "kylechui/nvim-surround",
        version = "*",
        -- event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    },

    -- bracket completion
    {'rstacruz/vim-closer'},

    -- pencil
    {'preservim/vim-pencil'},

    -- markdown preview
    {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      build = "cd app && npm install",
      init = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
    },


    -- Comments
    { 'numToStr/Comment.nvim', opts = {}, lazy = false, },


    -- Animation

    { 'eandrju/cellular-automaton.nvim' },

    {
        "marcussimonsen/let-it-snow.nvim",
        cmd = "LetItSnow", -- Wait with loading until command is run
        opts = {},
    },
    {
        "sphamba/smear-cursor.nvim",
        opts = {
            -- Smear cursor when switching buffers or windows.
            smear_between_buffers = true,

            -- Smear cursor when moving within line or to neighbor lines.
            smear_between_neighbor_lines = true,

            -- Draw the smear in buffer space instead of screen space when scrolling
            scroll_buffer_space = true,

            -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
            -- Smears will blend better on all backgrounds.
            legacy_computing_symbols_support = true,
        },
    },


    -- Obsidian
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            -- workspaces = {
            --     {
            --         name = "personal",
            --         path = "path/to/dir",
            --     },
            -- },
            note_frontmatter_func = function(note)
                -- Add the title of the note as an alias.
                if note.title then
                    note:add_alias(note.title)
                end

                local out = {
                    title = note.title,
                    aliases = note.aliases,
                    tags = note.tags,
                }

                -- `note.metadata` contains any manually added fields in the frontmatter.
                if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                    for k, v in pairs(note.metadata) do
                        out[k] = v
                    end
                end

                return out
            end,

            note_id_func = function(title)
                return title
            end,
        },
    }

})
