return {
  -- Main Copilot plugin
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false }, -- Use copilot-cmp instead for suggestions
        panel = { enabled = false },      -- Disable the built-in suggestion panel
      })
    end,
  },
  -- nvim-cmp source for Copilot
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = "copilot.lua",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
