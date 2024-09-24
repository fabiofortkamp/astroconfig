-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

-- Set up listchars
-- partly stollen from:
-- https://github.com/tjdevries/cyclist.vim
-- https://vi.stackexchange.com/questions/31811/neovim-lua-config-how-to-append-to-listchars
vim.opt.listchars = {
  eol = "↵",
  tab = "» ",
  trail = "·",
  extends = "<",
  precedes = ">",
  conceal = "┊",
  nbsp = "␣",
}
vim.opt.list = true

-- LaTeX filetypes
local cmp = require "cmp"
cmp.setup {
  -- global configuration goes here
  sources = {
    { name = "buffer" },
    -- other sources (GLOBAL)
  },
}
cmp.setup.filetype("tex", {
  sources = {
    { name = "vimtex" },
    { name = "buffer" },
    -- other sources
  },
})
-- Disable quickfix window on LaTeX warnings
vim.g.vimtex_quickfix_open_on_warning = 0
