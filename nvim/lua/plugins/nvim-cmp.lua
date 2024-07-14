return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- TODO: uncomment this if we install codeium
    -- table.insert(opts.sources, { name = "codeium", group_index = 0 })

    opts.window = {
      completion = require("cmp").config.window.bordered(),
      documentation = require("cmp").config.window.bordered(),
    }
  end,
}
