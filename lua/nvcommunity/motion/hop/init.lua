---@type NvPluginSpec
local spec = {
  {
    "smoka7/hop.nvim",
    cmd = { "HopWord", "HopLine", "HopLineStart", "HopWordCurrentLine" },
    opts = { keys = "etovxqpdygfblzhckisuran" },
    init = function()
      require("core.utils").load_mappings "hop"
    end,
  },
}

require("core.mappings").hop = {
  n = {
    ["<leader><leader>w"] = { "<CMD> HopWord <CR>", "Hint all words" },
    ["<leader><leader>t"] = { "<CMD> HopNodes <CR>", "Hint Tree" },
    ["<leader><leader>c"] = { "<CMD> HopLineStart<CR>", "Hint Columns" },
    ["<leader><leader>l"] = { "<CMD> HopWordCurrentLine<CR>", "Hint Line" },
  },
}

return spec
