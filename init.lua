local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  "tpope/vim-surround",
  "Mofiqul/dracula.nvim",
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine"
  -- },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  -- LSP Support
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  },
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
      {
        {
          "kristijanhusak/vim-dadbod-completion",
          init = function()
            vim.api.nvim_create_autocmd("FileType", {
              desc = "dadbod completion",
              group = vim.api.nvim_create_augroup("dadbod_cmp", { clear = true }),
              pattern = { "sql", "mysql", "plsql" },
              callback = function() require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } } end,
            })
          end,
        },
      }
    },
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'christoomey/vim-tmux-navigator' },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      --[[ things you want to change go here]]
      size = 10,
      open_mapping = [[<F7>]],
      shading_factor = 2,
      direction = "float",
      float_opts = {
        border = "curved",
        highlights = { border = "Normal", background = "Normal" },
      },
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  {
    "max397574/better-escape.nvim",
    opts = { timeout = 300 },
    config = function(opts)
      require("better_escape").setup(opts)
    end,
  },
  -- UI (LSP rename)
  {
    'stevearc/dressing.nvim',
    opts = {
      input = {
        default_prompt = "➤ ",
        win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
      },
      select = {
        backend = { "telescope", "builtin" },
        builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
    }
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
  },
  {
    'mrjones2014/smart-splits.nvim',
    opts = {
      ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" },
      ignored_buftypes = { "nofile" }
    },
    config = function(opts)
      require("smart-splits").setup(opts)
    end
  },
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = { 'kevinhwang91/promise-async' }
  -- }
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } }
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" }
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = "tpope/vim-dadbod",
    event = "VeryLazy",
  },
} --, opts)
)
require("hhhh123")
