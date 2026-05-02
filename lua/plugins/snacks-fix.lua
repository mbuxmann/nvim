-- Workaround for snacks.nvim explorer diagnostics race condition
-- https://github.com/folke/snacks.nvim — Invalid buffer id in diagnostics.lua:26
-- Remove this file once snacks.nvim fixes the upstream bug
return {
  {
    "folke/snacks.nvim",
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,
        callback = function()
          local ok, diag = pcall(require, "snacks.explorer.diagnostics")
          if ok and diag and diag.update then
            local orig_update = diag.update
            diag.update = function(cwd)
              local success, result = pcall(orig_update, cwd)
              if not success then
                -- Silently ignore "Invalid buffer id" errors — non-fatal race condition
                if not result:find("Invalid buffer") then
                  error(result)
                end
              end
              return result
            end
          end
        end,
      })
    end,
  },
}
