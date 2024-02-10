require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
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
    -- {'rstacruz/vim-closer'},

    -- pencil
    {'preservim/vim-pencil'},

    -- markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- comments
    { 'numToStr/Comment.nvim', opts = {}, lazy = false, },

    -- CellularAutomaton
    { 'eandrju/cellular-automaton.nvim' },

})
