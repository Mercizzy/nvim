local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
-- require("user.lsp.lsp-utils")

vim.cmd [[
  autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
  autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js,*.html Prettier
]]

vim.cmd [[
  autocmd BufWritePre *.json,*.jsonc lua vim.lsp.buf.formatting_sync()
]]
vim.cmd [[
  autocmd FileType apache setlocal commentstring=#\ %s
]]
