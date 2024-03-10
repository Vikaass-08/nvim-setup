return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver" },
      })
    end,
  },
  {
    "rust-lang/rust-analyzer",
  },
  {
    "purescript-contrib/purescript-vim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities() -- Add Auto Complete Snippet for the LSP
      local lspconfig = require("lspconfig")
      local lsputil = require("lspconfig.util")
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.purescriptls.setup({
        capabilities = capabilities,
        settings = {
          purescript = {
            addSpagoSources = true, -- e.g. any purescript language-server config here
            formatter = "purs-tidy",
            buildCommand = "spago build --purs-args --json-errors",
            autocompleteAddImport = true,
            autocompleteAllModules = true,
            autocompleteGrouped = true,
            exportsCodeLens = true,
            censorWarnings = {
              "ImplicitImport",
              "UnusedExplicitImport",
              "ImplicitQualifiedImport",
              "ShadowedName",
            },
            --fullBuildOnSaveProgress = true,
            outputDirectory = "output/",
            --packagePath = "spago.dhall",
            --preludeModule = "Prelude",
            sourcePath = "src",
            --importsPreferredModules = { "Prelude" },
            declarationTypeCodeLens = true,
            addNpmPath = true,
            autoStartPscIde = true,
            --pursExe = "../node_modules/purescript/purs.bin",
          },
        },
        root_dir = lsputil.find_git_ancestor,
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, {})
    end,
  },
}
