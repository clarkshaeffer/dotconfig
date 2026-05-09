require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
    },

	-- lsp
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},

    -- color
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
    {
        "rose-pine/neovim",
        name = "rose-pine",
        -- config = function()
        --     vim.cmd([[colorscheme rose-pine]])
        -- end,
    },

    -- why is harpoon2 not merged??
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

	{'mbbill/undotree'},
	{'tpope/vim-fugitive'},

    -- surround
    {
        "kylechui/nvim-surround",
        version = "*",
        config = function()
            require("nvim-surround").setup({})
        end
    },

    -- bracket completion
    {'rstacruz/vim-closer'},

    -- pencil
    {'preservim/vim-pencil'},

    -- Comments
    { 'numToStr/Comment.nvim', opts = {}, lazy = false, },

    -- Obsidian
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*", -- recommended, use latest release instead of latest commit
        config = false,
    },

    -- markdown viewer
    {
        "jannis-baum/vivify.vim",
        ft = "markdown",
    },

    -- Animation
    { 'eandrju/cellular-automaton.nvim' },
    {
        "marcussimonsen/let-it-snow.nvim",
        cmd = "LetItSnow", -- Wait with loading until command is run
        opts = {},
    },
    {
        "sphamba/smear-cursor.nvim",
        opts = {},
    },
})

