return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "ts_ls", "marksman", "pyright" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- CMP nvim is the autocompletion engine.
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.marksman.setup({
                capabilities = capabilities,
            })
            lspconfig.svelte.setup({
                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities
            })
            lspconfig.dockerls.setup({
                capabilities = capabilities
            })
            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })

            -- se: Show Explanation
            vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float, {})
            -- sd: Show definition
            vim.keymap.set("n", "<leader>sd", vim.lsp.buf.hover, {})
            -- gd: Go to definition
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            -- ca: Code Action
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
