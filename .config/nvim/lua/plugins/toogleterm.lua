return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")
      toggleterm.setup({
        size = 15,
        open_mapping = [[<c-\>]], -- Ctrl-\
        shade_terminals = true,
        direction = "float", -- "horizontal", "vertical", "tab", or "float"
        float_opts = {
          border = "curved",
          winblend = 3,
        },
        -- open in the project's git root:
        dir = "git_dir",
      })

      -- Keymaps for quick toggles
      vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Terminal (horizontal)" })
      vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Terminal (vertical)" })
      vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Terminal (float)" })
      -- toggle with Ctrl-\
      vim.keymap.set("t", "<c-\\>", "<C-\\><C-n>:ToggleTerm<CR>", { desc = "ToggleTerm (terminal mode)" })

      -- Optional: auto-redraw on TermClose to avoid ghosting
      vim.api.nvim_create_autocmd("TermClose", {
        callback = function()
          vim.cmd("redraw!")
        end,
      })
    end,
  },
}
