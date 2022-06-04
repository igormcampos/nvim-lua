require("nvim-lsp-installer").setup {
  automatic_installation = true
}

local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}
lspconfig.sumneko_lua.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.angularls.setup {}
lspconfig.bashls.setup {}
lspconfig.ccls.setup {}
lspconfig.csharp_ls.setup {}
lspconfig.cmake.setup {}
lspconfig.cssls.setup {}
lspconfig.dartls.setup {}
lspconfig.dockerls.setup {}
lspconfig.eslint.setup {}
lspconfig.emmet_ls.setup {}
lspconfig.gopls.setup {}
lspconfig.html.setup {}
lspconfig.jsonls.setup {}
lspconfig.jdtls.setup {}
lspconfig.tsserver.setup {}
lspconfig.kotlin_language_server.setup {}
lspconfig.remark_ls.setup {}
lspconfig.psalm.setup {}
lspconfig.sqls.setup {}
lspconfig.solang.setup {}
lspconfig.yamlls.setup {}
lspconfig.tailwindcss.setup {}
lspconfig.graphsq.setup {}

