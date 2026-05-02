return {
  {
    "echasnovski/mini.map",
    version = false,
    event = "VeryLazy",
    opts = {},
    keys = {
      { "<leader>um", function() require("mini.map").toggle() end, desc = "Toggle Minimap" },
    },
  },
}
