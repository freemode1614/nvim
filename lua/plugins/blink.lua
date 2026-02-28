return {
    "saghen/blink.cmp",
    -- enable = false,
    dependencies = {
        "Kaiser-Yang/blink-cmp-avante",
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        sources = {
            -- default = { "lsp", "path", "luasnip", "buffer", --[["avante"]] },
            providers = {
                avante = {
                    module = "blink-cmp-avante",
                    name = "Avante",
                },
            },
        },
        completion = {
            list = {
                selection = {
                    preselect = true,
                    auto_insert = false,
                },
            },
        },
    },
}
