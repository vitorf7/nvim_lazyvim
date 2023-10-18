return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("octo").setup({
      use_local_fs = true,
      enable_builtin = true,
    })
    vim.cmd([[hi OctoEditable guibg=none]])
    vim.treesitter.language.register("markdown", "octo")
  end,
  keys = {
    { "<leader>o", "<cmd>Octo<cr>", desc = "Octo", mode = { "n", "v" } },
  },
}
