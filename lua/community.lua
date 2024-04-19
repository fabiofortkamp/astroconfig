-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      transparent = false, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
    },
  },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.ruby" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.clojure" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { -- further customize the options set by the community
    "zbirenbaum/copilot.lua",
    opts = {
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "bottom", -- | top | left | right
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = "node", -- Node.js version must be > 18.x
      server_opts_overrides = {},
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "88",
      disabled_filetypes = { "help", "text", "markdown" },
      custom_colorcolumn = {},
      scope = "file",
    },
  },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.programming-language-support.csv-vim" },
  { import = "astrocommunity.programming-language-support.nvim-jqx" },
  { "gennaro-tedesco/nvim-jqx", ft = { "json", "yaml" } },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.color.tint-nvim" },
  { "levouh/tint.nvim", opts = {
    tint = -90,
    saturation = 0.6,
  } },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.color.headlines-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.hypersonic-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.true-zen-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  {
    "danymat/neogen",
    opts = {
      languages = {
        python = {
          template = {

            annotation_convention = "google_docstrings",
          },
        },
      },
    },
  },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
}
