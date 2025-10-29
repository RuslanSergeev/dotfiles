return {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
         snippet = {
           expand = function(args)
             require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
           end,
         },
         window = {
           completion = cmp.config.window.bordered(),
           documentation = cmp.config.window.bordered(),
         },
         mapping = cmp.mapping.preset.insert({
           ['<C-]>'] = cmp.mapping.scroll_docs(4),
           ['<C-[>'] = cmp.mapping.scroll_docs(-4),
           ['<C-Space>'] = cmp.mapping.complete(),
           ['<C-e>'] = cmp.mapping.abort(),
           ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
         }),
         sources = cmp.config.sources({
           {
             name = "luasnip",
             group_index = 1,
             option = { use_show_condition = true },
             entry_filter = function()
               local context = require("cmp.config.context")
               return not context.in_treesitter_capture("string")
                 and not context.in_syntax_group("String")
             end,
           },
           {
             name = "nvim_lsp",
             group_index = 2,
           },
           {
             name = "nvim_lua",
             group_index = 3,
           },
           {
             name = "treesitter",
             keyword_length = 4,
             group_index = 4,
           },
           {
             name = "path",
             keyword_length = 4,
             group_index = 4,
           },
          }),
        })
    end
 }
