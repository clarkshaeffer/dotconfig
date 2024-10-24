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
		config = function()
			-- load the colorscheme
			vim.cmd([[colorscheme tokyonight-night]])
		end,
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


    -- comments
    { 'numToStr/Comment.nvim', opts = {}, lazy = false, },

    -- CellularAutomaton
    { 'eandrju/cellular-automaton.nvim' },

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
                    id = note.title,
                    title = note.title,
                    aliases = note.aliases,
                    tags = note.tags,
                    path = note.path,
                    metadata = note.metadata,
                }

                -- `note.metadata` contains any manually added fields in the frontmatter.
                -- So here we just make sure those fields are kept in the frontmatter.
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
