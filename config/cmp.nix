{
  plugins.luasnip = {
    enable = true;
  };

  plugins.cmp = {
    autoEnableSources = true;
    settings = {
      mapping = {
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
      };
      snippet = {
        expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      };
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "luasnip";}
        {name = "buffer";}
      ];
    };
  };
}
