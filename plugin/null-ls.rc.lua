local ok, nvim_nullls = pcall(require, 'null-ls')
if (not ok) then return end

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

nvim_nullls.setup({
  sources = {
    nvim_nullls.builtins.formatting.prettier,
    nvim_nullls.builtins.diagnostics.eslint.with({
      diagnostics_format = 'Eslint: #{m}'
    })
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end
      })
    end
  end
})
