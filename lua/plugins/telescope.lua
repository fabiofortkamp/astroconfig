return {
  vim.keymap.set("n", "<leader>fe", function()
    local builtin = require "telescope.builtin"
    builtin.find_files { cwd = vim.fn.expand "~" }
  end, { desc = "Find files in home folder" }),
}
