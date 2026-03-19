return { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter",
    ---@module 'which-key'
    ---@type wk.Opts
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      delay = 500,
      icons = { mappings = vim.g.have_nerd_font },

      -- Document existing key chains
      spec = {
        { "<leader>e", group = "[E]xplore", mode = { "n", "v" } },
        { "<leader>f", group = "[F]ind", mode = { "n", "v" } },
        { "<leader>s", group = "[S]plit", mode = { "n", "v" } },
        { "<leader>t", group = "[T]ab", mode = { "n", "v" } },
      },
    },
  }
