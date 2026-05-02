return {
  {
    "nvim-mini/mini.map",
    version = false,
    event = "VeryLazy",
    opts = {},
    keys = {
      { "<leader>um", function() require("mini.map").toggle() end, desc = "Toggle Minimap" },
    },
  },
}
