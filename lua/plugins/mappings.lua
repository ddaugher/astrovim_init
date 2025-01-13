return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          --       -- use vimscript strings for mappings
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
          -- navigate buffer tabs with `H` and `L`
          L = {
            function()
              require("astrocore.buffer").nav(vim.v.count1)
            end,
            desc = "Next buffer",
          },
          H = {
            function()
              require("astrocore.buffer").nav(-vim.v.count1)
            end,
            desc = "Previous buffer",
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<leader>b"] = { desc = "Buffers" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { desc = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
