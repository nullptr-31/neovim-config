return {
    "akinsho/flutter-tools.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "stevearc/dressing.nvim", -- optional for UI
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    ft = "dart", -- lazy-load on Dart files

    config = function()
        require("flutter-tools").setup({
            lsp = {
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            },
            -- Add any other flutter-tools options here
            debugger = {
                enabled = true,
            },
            -- flutter_path = "flutter", -- Path to your Flutter SDK
            widget_guides = {
                enabled = true,
            },
        })
    end,
}
