-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "python",
      "julia",
      "jq",
      "ruby",
      "json",
      "awk",
      "bash",
      "fortran"
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
